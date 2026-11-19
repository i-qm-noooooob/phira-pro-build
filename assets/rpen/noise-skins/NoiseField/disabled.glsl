#version 100
precision highp float;
varying highp vec2 uv;

uniform sampler2D composeRT;
uniform sampler2D screenTexture;
uniform sampler2D blockMask;
uniform sampler2D blockNoise;
// @texture tex/BlockNoise1.png wrap=mirror filter=nearest colorspace=linear alphaMode=straight
uniform sampler2D pointNoise;
// @texture tex/PointNoise.png wrap=repeat filter=nearest colorspace=linear alphaMode=straight
uniform float time;
uniform vec2 screenSize;
uniform vec4 outlineColor;
uniform float disabledFillOpacity;
uniform float shineBrightness;
uniform float shineSpeed;
const float disabledDisplaceSpeed = 0.30000001192092896;
const vec2 disabledDisplaceDirection = vec2(1.0,1.0);
const vec2 disabledDisplaceMapST = vec2(0.50,0.20);
const vec2 disabledSparkMapST = vec2(3.00,1.20);
const float disabledSparkMapOpacity = 3.5;
const float disabledSparkDisplaceIntensity = 2.2899999618530273;
const float maskPixelScale = 8.0;

float nfBit(float value, float position) {
    return mod(floor(value / exp2(position)), 2.0);
}

vec3 nfRGBtoHSV(vec3 c) {
    float hi = max(max(c.r,c.g),c.b);
    float lo = min(min(c.r,c.g),c.b);
    float d = hi-lo;
    float h = 0.0;
    if (d > 1e-10) {
        if (hi==c.r) h=mod((c.g-c.b)/d,6.0);
        else if (hi==c.g) h=(c.b-c.r)/d+2.0;
        else h=(c.r-c.g)/d+4.0;
        h=mod(h/6.0,1.0);
    }
    return vec3(h, hi<=1e-10 ? 0.0 : d/hi, hi);
}
vec3 nfHSVtoRGB(vec3 h) {
    vec3 p=clamp(abs(fract(h.xxx+vec3(1.0,2.0/3.0,1.0/3.0))*6.0-3.0)-1.0,0.0,1.0);
    return h.z*(vec3(1.0)+h.y*(p-vec3(1.0)));
}
vec3 nfVariant(float s, float v) {
    vec3 c=nfRGBtoHSV(outlineColor.rgb);
    c.y=clamp(c.y*s,0.0,1.0);
    c.z=clamp(c.z*v,0.0,1.0);
    return nfHSVtoRGB(c);
}
vec3 nfDisabledFill() { return nfVariant(1.0794083394988696,0.4970000088214874); }
vec3 nfDisabledSpark() { return nfVariant(1.1197181312580806,0.31132078170776367); }

void main() {
    float comp = texture2D(composeRT, uv).r;
    // Ready is multiplied by this same disabled-compose mask. Empty pixels
    // can therefore return before sampling blockMask or either noise texture.
    if (comp - 0.0001 < 0.0) {
        gl_FragColor = texture2D(screenTexture, uv);
        return;
    }

    vec2 maskSize = max(floor(screenSize / max(maskPixelScale, 1.0)), vec2(1.0));
    vec2 maskUV = (floor(uv * maskSize) + 0.5) / maskSize;
    float maskWord = floor(texture2D(blockMask, maskUV).r * 255.0 + 0.5);
    float dn = nfBit(maskWord, 4.0);
    float ds = nfBit(maskWord, 5.0);
    float ready = comp * abs(ds - dn);

    vec2 dir = normalize(disabledDisplaceDirection);
    vec2 perp = vec2(-dir.y, dir.x);
    float t = (time / 20.0) * disabledDisplaceSpeed;

    vec2 duv = uv * disabledDisplaceMapST;
    float dPerp = texture2D(blockNoise, duv + perp * t).r;
    float dDir  = texture2D(blockNoise, duv + dir  * t).r;
    float dispAvg = (dPerp + dDir) * 0.5;
    vec2 disp = dir * (dDir - 0.5) + perp * (dPerp - 0.5);
    vec2 sparkUV = uv * disabledSparkMapST + disp * disabledSparkDisplaceIntensity;
    float spark = texture2D(pointNoise, sparkUV).r;

    vec3 disabledRgb = nfDisabledFill() * disabledFillOpacity;
    disabledRgb += spark * nfDisabledSpark() * dispAvg * disabledSparkMapOpacity;
    disabledRgb *= comp;

    // This reproduces disabled.glsl followed by ready.glsl in one full-screen
    // draw. Disabled writes alpha=1; the subsequent Ready pass therefore also
    // leaves alpha at 1 while adding its a*a pulse to RGB.
    float pulse = sin(time * shineSpeed) * 0.5 + 1.0;
    vec3 readyRgb = vec3(ready * ready * pulse * shineBrightness);
    vec4 behind = texture2D(screenTexture, uv);
    gl_FragColor = vec4(behind.rgb + disabledRgb + readyRgb, 1.0);
}
