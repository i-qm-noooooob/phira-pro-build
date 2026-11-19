
label = SETTINGS

general = General
audio = Audio
chart = Chart
debug = Debug
about = Info

item-lang = Language
item-appearance = Appearance
item-appearance-sub = Custom icon, background and illustration
item-appearance-open = Open
item-appearance-import = Custom illustration
item-appearance-import-btn = Import
item-appearance-imported = Illustration imported
item-ui-theme = UI theme
item-ui-theme-sub = Accent and surface colours for the app interface
theme-blue = Phira Blue
theme-violet = Violet
theme-emerald = Emerald
theme-sunset = Sunset
theme-rose = Rose
theme-graphite = Graphite
item-limit-perfect-plus = Perfect+ window
item-limit-perfect = Perfect window
item-limit-good = Good window
item-limit-bad = Bad window
item-hp-mode = Health bar
item-hp-mode-sub = The run ends when the bar reaches 0
item-hp-disable-healing = Disable healing
item-hp-disable-healing-sub = Hitting notes does not restore life in Health Bar mode
item-hp-amount = Damage multiplier
item-hp-width = Bar length
item-auto-retry = Auto retries
item-auto-retry-sub = Restart the run automatically after a failure (0 disables)
item-retry-lead = Retry lead-in
item-retry-lead-sub = Restart this many seconds before the failure (0 starts over)
item-practice-ramp = Speed ramp
item-practice-ramp-sub = Raise the speed after each practice loop
item-practice-speed = Start speed
item-practice-step = Step per loop
item-hp-height = Bar thickness
item-fullscreen = Fullscreen Mode
item-offline = Offline Mode
item-offline-sub = Disable all online functionality.
item-server-status = Server Status
item-server-status-sub = Open the server status page in your browser.
check-status = Open
item-lowq = Low Resolution Mode
item-lowq-sub = Lower the quality of the UI, increasing peformance.
item-clear-cache = Clear Cache
item-cache-size-loading = Loading…
item-cache-size = Cache size: { $size }
item-clear-cache-btn = Clear
item-cache-cleared = Cache cleared
item-android-logs = Automatic diagnostic logs
item-android-logs-sub = Download/PhiraPro/logs; Clear Cache also removes old logs
item-insecure = Insecure Connection
item-insecure-sub = Enable old devices to use online functionality.
item-enable-anys = Enable Anys
item-enable-anys-sub = Use an Anys gateway to improve network stability.
item-anys-gateway = Anys Gateway
item-anys-gateway-sub = Use a custom Anys gateway address.
item-anys-gateway-invalid = Invalid gateway address.

item-adjust = Automatic Time Adjustment
item-adjust-sub = Keeps the chart clock in sync with music playback.
item-music = Music Volume
item-sfx = SFX Volume
item-bgm = BGM Volume
item-cali = Adjust Offset
item-preferred-sample-rate = Preferred Sample Rate
preferred-sample-rate-default = System Default
item-audio-buffer-size = Audio Buffer Size

item-show-acc = Real-Time Accuracy
item-show-avg-fps = Show AVG FPS
item-show-avg-fps-sub = Display the average FPS on the results screen.
item-ap-fc-indicator = AP/FC Indicator
item-ap-fc-indicator-sub = Use line color to indicate AP/FC status.
item-dc-pause = Double-Tap to Pause
item-dhint = Simultaneous Hint
item-dhint-sub = Highlight notes that are meant to be hit at the same time.
item-opt = Chart Optimization
item-opt-sub = Skips more unnecessary drawing to raise frame rate; a few charts may show visual glitches, disable it if that happens.
item-use-keyboard = Use Keyboard
item-use-keyboard-sub = Enable keyboard input for gameplay. Scores cannot be uploaded when enabled.
item-prefer-reduced-motion = Prefer Reduced Motion
item-prefer-reduced-motion-sub = Reduce animations and visual effects
item-speed = Chart Rate
item-note-size = Note Size

item-chart-debug = Show Line ID
item-chart-debug-sub = Display the IDs and orientation of lines.
item-show-fps = Show FPS
item-show-fps-sub = Show the current framerate at your chosen position
item-touch-debug = Show Touch Points
item-touch-debug-sub = Display user touch points.
item-touch-color = Touch Point Color
item-touch-color-sub = Open the palette to choose any touch color
item-touch-alpha = Touch Point Opacity
item-touch-size = Touch Point Size
item-reset-settings = Reset All Settings
item-reset-settings-sub = Restore every option on this page to its default value.
item-reset-settings-btn = Reset
reset-settings-title = Reset All Settings
reset-settings-text = Every option on the settings page (language, theme, judgement / gameplay, debug, ...) will be restored to its default. Your account, charts, scores and imported resources are kept.
reset-settings-done = Settings restored to defaults
reset-settings-cancel = Cancel
reset-settings-confirm = Confirm
item-export-logs = Export Logs
item-export-logs-sub = Export logs from the last seven days as a ZIP archive for feedback.
item-export-logs-button = Export
log-exporting = Exporting logs…
log-export-failed = Failed to export logs

load-cali-failed = Failed to load calibration audio.

item-refresh-rate = Refresh Rate
item-refresh-rate-sub = Choose the requested display refresh rate
item-refresh-rate-max = Max: { $rate } Hz

about-content =
  Phira Pro v{ $version }

  Phira is a non-commercial community-driven rhythm game inspired by Phigros.

  This is an unofficial player-run project, with no relationship of license, partnership, or operation with Pigeon Games Co., Ltd. or the official Phigros team.

  Phira Pro is a third-party, non-commercial modification based on the official Phira.

  BiliBili Account: @Phira官方
  QQ Guild: r48eajexth
  Discord Server: discord.gg/gqpR3bTSsP

  We recommend joining either the QQ guild or the Discord server to get live updates and receive assistance.

  Staff List (sorted lexicographically)
  Development
  { $development }

  Operations
  { $operations }

  Documentation
  { $documentation }

  Art
  { $art }

  Music
  { $music }

  Audio
  { $audio }

  Community Management
  { $community }

  Localization
  { $localization }

  Phira Pro Revision
  Maintenance
  { $revision }

  And many more voluntary chart reviewers. For a full list please refer to https://phira.moe/staff .

item-drag-protect = Drag Protection
item-drag-protect-sub = While a tap / hold is early, a drag at least 10ms closer to the current time intercepts one tap per drag note.
item-flick-protect = Flick Protection
item-flick-protect-sub = While a tap / hold is early, a flick at least 10ms closer can intercept repeated taps; tapping does not judge the flick.
item-combo-text = Combo Label
item-combo-text-sub = The text shown under the combo counter in game (up to 16 characters)
combo-text-default = Default
item-late-leniency = Input latency compensation
item-late-leniency-sub = Subtracts the device delay from input timestamps before judgement.
item-judge-chart = Judgement Chart
item-judge-chart-sub = Draw a judgement timing distribution chart on the ending screen (early <- -> late)
item-hp-capacity = Max Life
item-hp-failure-effect = Life failure effect
hp-failure-red-flash = Phigros effect
hp-failure-slowdown = Phira Pro effect
item-hp-color = Health Bar Color
item-history = Score History
item-history-sub = Every play saved locally: list / trend / PB comparison / judgement distribution / import & export
item-history-open = Open
item-debug-line = Line Debug
item-debug-line-sub = Show ID / height / z-index next to each line; lines that would be hidden stay as faint ghosts
item-debug-note = Note Debug
item-debug-note-sub = Show moving Perfect+ / Perfect / Good / Bad timing bands, projected using the actual scroll speed
item-legacy-hold = Legacy Hold rendering
item-legacy-hold-sub = Use the original official-chart Hold length for resource pack compatibility. Re-enter the chart to apply.
item-rpen-software = RPEN software rendering
item-rpen-software-sub = Enable if the editor looks black but still responds to taps. Reopen the editor to apply. Some preview effects may be limited.
item-font = Custom Font
item-font-sub = Import a ttf/otf file as the UI font. *Takes effect after a restart*
import-font = Import
item-font-reset = Reset Font
item-font-reset-sub = Delete the imported font and use the built-in one again. *Takes effect after a restart*
font-reset-btn = Reset
font-imported = Font imported; restart the app to apply
font-import-failed = Failed to import the font
font-reset-done = Built-in font restored; restart the app to apply
item-blacklist = Player Blacklist
item-blacklist-sub = Hide these Phira IDs from every local leaderboard and user list
item-blacklist-open = Manage
item-hold-tail-judge = Hold Tail Judgement
item-hold-tail-judge-sub = Judge both ends of a hold (head + tail), like osu!mania; the offset bar shows twice
judge-window-invalid = Enter a number
item-hud = HUD Customization
item-hud-sub = Drag the components of the main menu, library and settings to reposition and resize them
item-hud-open = Manage
item-transfer = Data migration
item-transfer-sub = Import charts and settings from official Phira
transfer-open = Open
item-backup = Backup & restore
item-backup-sub = Back up or restore local data
backup-open = Open
transfer-label = Data migration
transfer-desc = Select the data.json inside the official Phira data folder to import its charts, skins, fonts and appearance.
transfer-pick = Select data.json
transfer-import = Start import
transfer-import-config = Also import settings
transfer-scan = Found { $charts } charts, { $respacks } skins, { $appearance } appearance files
transfer-done = Import complete ({ $charts } charts, { $respacks } skins, { $appearance } appearance). Please restart Phira Pro to load them.
transfer-unsupported = Not supported on this platform yet
transfer-failed = Operation failed
backup-label = Backup & restore
backup-desc = Back up data to ZIP. Preview and select content and file conflict handling before restoring. Restart after restoring settings.
backup-create = Back up to file
backup-restore = Restore from backup
backup-created = Backup complete: { $count } files
backup-restored = Restore complete: { $count } files. Please restart Phira Pro.
transfer-working = Working…

item-api-url = API Endpoint
item-api-url-sub = Custom API base URL (login / charts / scores). Leave empty to use the official server. Must start with http(s)://; restart to apply.

item-status-url = Server Status Page
item-web-url-sub = Web frontend base (chart / user / collection pages, policy links). Leave empty for the official site. Must start with http(s)://.
item-url-invalid = Invalid URL (must start with http:// or https://)
item-status-url-sub = URL opened by the "Server Status" button in settings. Leave empty for the official page. Must start with http(s)://.
item-web-url = Web Frontend


item-flow-speed = Note Flow Speed
item-flow-speed-sub = Scales only the notes' scrolling speed; the music and its pitch stay untouched. Scores are not eligible for upload.
item-fade-strength = Fade In/Out Strength
item-fade-strength-sub = Opaque cover height: 10% to 90% of the playfield. Customize its color or cropped image under Experience.
aspect-official = Official
item-custom-aspect = Custom Play Aspect Ratio
item-custom-aspect-sub = Override the aspect ratio stored in the chart
item-aspect-ratio = Play Aspect Ratio
item-aspect-ratio-sub = Supports 16:9 or a decimal like 1.7778
aspect-invalid = Invalid aspect ratio, e.g. 16:9 or 1.7778
item-offset-indicator = Offset Indicator
item-offset-indicator-sub = Shows the early/late judgement offset bar in game

item-app-icon = App Icon
item-app-icon-sub = Change the app icon. *Takes effect after restart*
item-app-icon-reset = Reset icon
item-app-bg = Background
item-app-bg-sub = Change the main screen background
item-app-bg-reset = Reset background
item-appearance-import-sub = The character at the bottom-left of the main screen (transparent PNG recommended)
item-appearance-reset = Reset character
item-app-icon-imported = Icon imported - restart to apply
item-app-icon-reset-done = Default icon restored - restart to apply
item-app-bg-imported = Background imported
item-app-bg-reset-done = Default background restored
item-app-bgm = Background music
item-app-bgm-sub = Change the main screen background music
item-app-bgm-reset = Reset background music
item-app-bgm-imported = Background music imported
item-app-bgm-reset-done = Default background music restored
item-appearance-reset-done = Default character restored

migrate-label = Import My Played Charts
migrate-desc = Scan the official chart leaderboards for charts you have a score on, then download the matching ones (with no filter it scans every chart, which is slow)
migrate-min-diff = Min Level
migrate-min-rating = Min Rating
migrate-unlimited = Any
migrate-ranked-only = Rated only
migrate-skip = Skip downloaded
migrate-start = Start import
migrate-cancel = Cancel
migrate-fetching = Fetching your scores from the official server...
migrate-searching-meta = Fetching chart info...
migrate-none = No chart matches the filters
migrate-progress = Downloading { $done }/{ $total }: { $name }
migrate-done = Done: { $ok } succeeded, { $failed } failed
migrate-imported = Imported { $count } chart(s)
migrate-need-login = Please sign in to the official server first

migrate-enumerating = Listing charts ({ $pages } pages)...
migrate-checking = Checking your scores { $done }/{ $total }...

chart-import-label = Batch Import Charts
chart-import-desc = Import a zip produced by the official client's batch export (a single chart pack also works); imported charts show up in your local library right away
chart-import-btn = Choose file & import
item-block-simple = Simple block areas
item-block-simple-sub = Simplifies judge-line noise effects to cut GPU cost; the frame-rate gain depends on the chart, judging rules are unchanged.
item-line-elision = Transparent line elision
item-line-elision-sub = Skips fully transparent judge lines to reduce drawing cost. Charts with many transparent lines benefit most; normal charts may see limited frame-rate gains. Visuals are unchanged.

experience = Experience
font-display-size = Font display size
font-smallest = Smallest · 80%
font-smaller = Smaller · 90%
font-medium = Medium · 100%
font-larger = Larger · 110%
font-largest = Largest · 120%
theoretical-score = Theoretical score
theoretical-score-sub = Gameplay and results: +1 per Perfect+. Stored and uploaded scores stay unchanged.
uniform-loudness = Match music loudness
uniform-loudness-sub = Match menu, preview and gameplay levels with peak headroom. SFX remain independent.
uniform-level = Unified music volume
fixed-background = Fixed background dimming
background-dim = Background dimming · 0.00–1.00
background-invalid = Enter a finite number between 0.00 and 1.00.
upper-cover-color = Upper cover color
lower-cover-color = Lower cover color
upper-cover-image = Upper cover image
lower-cover-image = Lower cover image
cover-import = Import image
cover-reset = Restore black cover
cover-editor = Cover editor
cover-crop-help = Drag to position · Zoom to crop · Dashed: minimum · Solid: maximum
cover-cancel = Cancel
cover-apply = Apply

item-shader-pre-render = Shader pre-render
item-shader-pre-render-sub = Compiles shaders and caches static noise during loading to reduce in-game shader hitches; loading is slower and the frame-rate gain depends on the chart.
judgement-presets = Judgement
preset-phigros = Phigros judgement
preset-pro = Phira Pro judgement
preset-phigros-short = Phigros
preset-pro-short = Phira Pro
preset-current = Current custom settings
preset-select = Judgement preset
preset-select-sub = Edit below to save current settings automatically; presets store reusable combinations
preset-add = Add preset
preset-edit = Edit preset
preset-copy = Copy as new preset
preset-delete = Delete preset
preset-delete-sub = Removes the saved entry; keeps current judgement values
preset-name = Preset name
preset-name-empty = Enter a name
preset-name-invalid = Use 1–32 characters without newlines or control characters.
preset-name-duplicate = A preset already uses this name.
preset-algorithm = Judgement algorithm
preset-save = Save and use
preset-cancel = Discard changes
preset-flash = Flash uses fixed judgement and has no custom presets.
preset-number-0 = Perfect+ (ms)
preset-number-1 = Perfect (ms)
preset-number-2 = Good (ms)
preset-number-3 = Bad (ms)
preset-number-4 = Input latency compensation (ms)
preset-number-5 = Drag window (ms)
preset-number-6 = Flick window / Perfect
preset-number-7 = Tap / Hold half-width (world units)
preset-number-8 = Drag / Flick half-width (world units)
preset-number-9 = Bad shrink start (world units)
preset-number-10 = Matching vertical divisor
preset-number-11 = Matching time gap (ms)
preset-number-12 = Initial Hold release protection
preset-number-13 = Hold early completion (ms)
preset-number-14 = Unstarted Hold late-tail Miss (ms)
preset-number-15 = Drag / Flick early scoring (ms)
preset-number-16 = Strict Perfect base window (ms)
preset-number-17 = Strict Good base window (ms)
preset-number-18 = Strict Bad base window (ms)
preset-number-19 = Flick base speed
preset-number-20 = Flick reference DPI
preset-number-21 = Flick time normalization (Hz)
preset-number-22 = Flick speed multiplier
preset-number-23 = Flick minimum projection delta (world units)
preset-switch-0 = Drag protection
preset-switch-1 = Flick protection
preset-switch-2 = Global strict judgement
preset-switch-3 = Fullscreen judgement
preset-switch-4 = Remove combo score
preset-switch-5 = Separate Hold tail (extension)
preset-switch-6 = Strict ten-frame compensation
preset-switch-7 = Sparse-chart late Bad behavior

preset-number-24 = Bad shrink / Perfect factor
preset-number-25 = Screen DPI override (0 = auto)
preset-dpi = Automatic screen DPI
preset-dpi-sub = Android reads physical DPI; other platforms use a fallback, which you can override

judgement-settings = Judgement settings
judgement-settings-sub = Edit grades, windows and matching rules; save reusable presets
judgement-open = Open
preset-early = Early (−)
preset-late = Late (+)
preset-windows = Timing windows
preset-rules = Matching and protection

preset-detailed = Detailed judgement
preset-switch-8 = Perfect+ judgement
preset-switch-9 = Extended grades (GREAT / OK / MEH)
preset-number-26 = GREAT window
preset-number-27 = OK window
preset-number-28 = MEH window
theoretical-score-disabled = Enable Perfect+ in judgement settings first

preset-od = osu!mania ScoreV2 OD timing shortcut
preset-od-custom = Custom
preset-od-sub = ScoreV2 symmetric windows, Perfect+ off; extended OD -15 to 15

replays-settings = Replay files
replays-settings-sub = Import, export, match charts and watch replays

item-fps-position = FPS position
fps-top-center = Top center
fps-bottom-center = Bottom center
fps-top-left = Top left
fps-top-right = Top right
fps-bottom-left = Bottom left
fps-bottom-right = Bottom right

plugins-settings = Plugins
plugins-settings-sub = Import, enable and configure plugins
preset-colors = Judgement colors
preset-colors-sub = Choose any color with the palette; reset follows resource-pack colors
preset-color-default = Resource pack

item-desktop-fps = Frame rate limit
item-desktop-fps-sub = Applies immediately; follows display refresh rate by default
item-desktop-fps-auto = Follow display

color-original = Original
color-current = Current
color-reset = Reset
color-reset-all = Reset all
color-invalid = Enter six hexadecimal digits, e.g. #12AB34
color-rgb-invalid = Enter an integer from 0 to 255
color-current-default = Current (default)

practice-debug-display = Diagnostic display
practice-debug-performance = Frame rate
practice-debug-input = Touch visualization

item-show-judgement-details = Show judgement counts
item-show-judgement-details-sub = Show live counts below the score and accuracy for the active preset
item-show-perfect-combo = Show Perfect Combo
item-show-perfect-combo-sub = Count consecutive Perfect+ / Perfect only; other grades reset the display, without changing scoring

item-gameplay-background-blur = Gameplay background blur

item-fps-unlimited = Unlimited

item-timing-offset = Live timing offset
item-timing-offset-sub = Show the latest measured hit offset and the running average in milliseconds
item-early-late = Early/Late feedback
item-early-late-sub = Brief timing feedback for non-Perfect hits with a measured offset
item-early-late-position = Feedback position
item-early-late-indicator = Below offset indicator
item-early-late-bottom = Bottom of playfield

item-font-atlas-pool = Pooled font atlas
item-font-atlas-pool-sub = Reduces HUD text-update hitches and long frames. Average frame-rate gains depend on the device and how often HUD text updates; low-end devices usually see fewer stutters. Visuals and layout are unchanged; on by default.
item-effect-render-optimized = Effect rendering optimizations
item-effect-render-optimized-sub = Reduces shader and full-screen composition cost. Charts with many effects benefit most; normal charts may see limited gains. Turning it off restores the original shaders; shader and material changes apply after reloading the chart.

performance = Performance
performance-quality = Quality
performance-fps = Frame rate & refresh rate
performance-render = Rendering optimizations
performance-interface = Interface
performance-preset = Quality preset
performance-preset-sub = Quickly switches quality, particles and anti-aliasing; Low is intended for low-end devices.
performance-preset-low = Low
performance-preset-standard = Standard
performance-preset-high = High
item-particle = Hit particles
item-particle-sub = Shows hit particles; turning it off can noticeably raise frame rate and is recommended on low-end devices.
item-noise-glow = Noise glow
item-noise-glow-sub = Judge-line noise glow; turning it off can raise frame rate, especially on low-end devices.
item-noise-refraction = Noise refraction
item-noise-refraction-sub = Judge-line noise refraction; turning it off can raise frame rate, especially on low-end devices.
item-sample-count = Anti-aliasing samples
item-sample-count-sub = 1× / 2× / 4×; higher is smoother with a larger GPU cost. This option has a large performance impact.
item-fxaa = FXAA

item-aa = Anti-aliasing
item-aa-sub = Smooths edges, but this option has a particularly large performance cost; on low-end devices prefer off or FXAA only.
item-aa-off = Off
item-aa-fxaa = FXAA
item-aa-msaa2 = MSAA 2×
item-aa-msaa4 = MSAA 4×

render-category-output = Output
render-category-visuals = Gameplay visuals
render-category-flow = Presentation flow
render-category-opening = Opening
render-category-ending = Results
render-category-audio = Audio
render-category-overview = All settings
render-field-Resolution-name = Resolution
render-field-Resolution-help = Video output dimensions
render-field-Fps-name = Frame rate
render-field-Fps-help = Offline frame-by-frame rendering, independent of display refresh rate
render-field-Directory-name = Output folder
render-field-Directory-help = Videos are named after the chart title and difficulty
render-field-ResourcePack-name = Resource pack
render-field-ResourcePack-help = Uses gameplay settings by default; can be selected separately for video without changing gameplay
render-field-OffsetIndicator-name = Offset indicator
render-field-OffsetIndicator-help = Follows the gameplay HUD by default; can be toggled separately. Auto-play offset is zero
render-field-ApFcIndicator-name = AP/FC line indicator
render-field-ApFcIndicator-help = Color the line by AP or FC status; also applies to auto-play
render-field-DoubleHint-name = Double-note highlight
render-field-DoubleHint-help = Use the selected resource pack's double-note style
render-field-Particle-name = Hit effects
render-field-Particle-help = Use the selected resource pack's hit effects
render-field-AccuracyDisplay-name = Show accuracy
render-field-AccuracyDisplay-help = Can be shown even when the gameplay HUD is hidden
render-field-JudgementDetails-name = Judgement statistics
render-field-JudgementDetails-help = Show counts for each judgement tier, even when the gameplay HUD is hidden
render-field-PerfectCombo-name = Perfect combo
render-field-PerfectCombo-help = Replace the HUD combo with Perfect combo; requires the gameplay HUD
render-field-EarlyLate-name = Early/Late statistics
render-field-EarlyLate-help = Show actual early/late judgement counts, even when the gameplay HUD is hidden
render-field-Preset-name = Visual preset
render-field-Preset-help = Switch presentation presets while keeping entered display text
render-field-Font-name = Presentation font
render-field-Font-help = Choose a TTF or OTF font for the opening and results only
render-field-ResetFont-name = Default presentation font
render-field-ResetFont-help = Restore the built-in presentation font
render-field-Opening-name = Export opening
render-field-Opening-help = Loading screen and song information
render-field-Playing-name = Export chart
render-field-Playing-help = Includes chart music and auto-play
render-field-Ending-name = Export results
render-field-Ending-help = Separate results screen; does not alter actual scores
render-field-Hud-name = Show gameplay HUD
render-field-Hud-help = Score, combo, song title and chart-bound HUD
render-field-OpeningDuration-name = Opening duration
render-field-OpeningDuration-help = 1 to 60 seconds, including loading and transition
render-field-EnterDuration-name = Gameplay entrance
render-field-EnterDuration-help = 0 to 5 seconds; 0 starts immediately
render-field-ExitDuration-name = Gameplay exit
render-field-ExitDuration-help = 0 to 5 seconds; 0 ends immediately
render-field-EndingDuration-name = Results duration
render-field-EndingDuration-help = 2 to 120 seconds, including outro and entrance
render-field-Title-name = Song title
render-field-Title-help = Leave blank to use chart metadata; shared by opening and results
render-field-Composer-name = Composer
render-field-Composer-help = Leave blank to use chart metadata
render-field-Charter-name = Charter
render-field-Charter-help = Leave blank to use chart metadata
render-field-Illustrator-name = Illustrator
render-field-Illustrator-help = Leave blank to use chart metadata
render-field-Difficulty-name = Difficulty text
render-field-Difficulty-help = For example IN Lv.15; leave blank to use chart metadata
render-field-Level-name = Level number
render-field-Level-help = Level shown in the loading screen difficulty block
render-field-Superscript-name = Level superscript
render-field-Superscript-help = Optional extra difficulty text
render-field-Subscript-name = Level subscript
render-field-Subscript-help = Optional extra difficulty text
render-field-Tip-name = Tip text
render-field-Tip-help = Leave blank to use the chart tip or gameplay loading entry
render-field-Loading-name = Loading text
render-field-Loading-help = Leave blank to show Loading...
render-field-Player-name = Player name
render-field-Player-help = Used only in the exported video
render-field-Avatar-name = Player avatar
render-field-Avatar-help = Choose a local image for the results screen
render-field-ResetAvatar-name = Default avatar
render-field-ResetAvatar-help = Restore the built-in avatar
render-field-Rks-name = RKS
render-field-Rks-help = Leave blank to hide; used only in video display
render-field-Challenge-name = Challenge badge text
render-field-Challenge-help = Leave blank to hide
render-field-ChallengeColor-name = Challenge badge color
render-field-ChallengeColor-help = Neutral, green, blue, red, gold or rainbow
render-field-ScoreIncrease-name = Score increase text
render-field-ScoreIncrease-help = Optional, e.g. +0000123
render-field-CollectedTitle-name = Reward panel title
render-field-CollectedTitle-help = Hide the entire panel when reward title is blank
render-field-CollectedText-name = Reward details
render-field-CollectedText-help = Optional results-screen information
render-field-ResultSource-name = Statistics source
render-field-ResultSource-help = Use automatic statistics or custom values for video display
render-field-Score-name = Displayed score
render-field-Score-help = Applies to custom display; maximum 1,000,000
render-field-Accuracy-name = Displayed accuracy
render-field-Accuracy-help = Applies to custom display; 0 to 100%
render-field-Combo-name = Displayed max combo
render-field-Combo-help = Applies to custom display
render-field-Perfect-name = Perfect count
render-field-Perfect-help = Applies to custom display
render-field-Good-name = Good count
render-field-Good-help = Applies to custom display
render-field-Bad-name = Bad count
render-field-Bad-help = Applies to custom display
render-field-Miss-name = Miss count
render-field-Miss-help = Applies to custom display
render-field-Hitsound-name = Include hitsounds
render-field-Hitsound-help = Use chart-specific hitsounds
render-field-MusicVolume-name = Music volume
render-field-MusicVolume-help = 0 to 2; 1 is the original volume
render-field-HitsoundVolume-name = Hitsound volume
render-field-HitsoundVolume-help = 0 to 2; independent of music volume
render-field-EndingVolume-name = Results music volume
render-field-EndingVolume-help = 0 to 2; uses the selected resource pack's results music
render-field-EndingDelay-name = Results music delay
render-field-EndingDelay-help = 0 to 10 seconds, relative to the start of the results screen
render-field-Fade-name = Audio fade
render-field-Fade-help = 0 to 5 seconds; applies to music segments and results music
tools-diagnostics = Diagnostics
tools-chart-render = Chart renderer
tools-chart-editor = Chart editor
tools-hotkey-manager = Hotkey manager
tools-open = Open
cover-image-too-large = Image must not exceed 32 MB
cover-image-read-failed = Unable to read cover image

render-value-on = On
render-value-off = Off
render-value-follow-default = Follow default
render-value-follow-game-settings = Follow gameplay settings
render-value-builtin-default = Built-in default (Phira)
render-value-imported-pack = Imported resource pack
render-value-follow-gameplay-hud = Follow gameplay HUD
render-value-font-selected = Font selected
render-value-builtin-font = Built-in font
render-value-reset-default = Restore default
render-value-phigros-presentation = Full Phigros presentation
render-value-phira-hud = Phira gameplay HUD
render-value-chart-only = Chart only
render-unit-seconds = sec
render-value-image-selected = Image selected
render-value-builtin-avatar = Built-in avatar
render-value-hidden = Hidden
render-color-neutral = Neutral
render-color-green = Green
render-color-blue = Blue
render-color-red = Red
render-color-gold = Gold
render-color-rainbow = Rainbow
render-value-custom-display = Custom display
render-value-auto-statistics = Automatic statistics

render-pick-chart = Select a chart to render
render-pick-chart-help = Choose from your chart library. Display text can be customized in the Opening category.
render-change = Change
render-select = Select
render-cancel = Cancel render
render-start = Start render
render-save-download = Save to Downloads
render-open-output = Open output folder
render-item-count = items
render-busy-help = Rendering with the current settings. Settings can be changed after completion or cancellation.
render-overview-help = All current parameters. Select a category above to edit them.
render-flow-help = Opening → gameplay entrance → chart → gameplay exit → results
render-results-help = Avatar, player details and custom statistics are for video display only.
render-video-encoder = Video encoder
render-ffmpeg-bundled = FFmpeg is bundled
render-ffmpeg-system = Use system FFmpeg
render-pack-unavailable = Resource pack unavailable. Please select it again.
render-change-folder = Change folder
render-idle-status = Select a chart and visual preset to start exporting. Video is rendered at a fixed frame rate; no audio is played during rendering.
render-loading-status = Loading chart and composing video soundtrack…
render-calculating = Calculating
render-rendering = Rendering
render-frames = frames
render-eta = Remaining
render-complete = Completed
render-time = in
render-failed = Render failed

render-install-ffmpeg = Install FFmpeg on the Output page and wait for detection to finish.
render-select-chart-first = Please select a chart first.
render-output-name-failed = Unable to create the video file name.
render-select-output-folder = Select video output folder
render-default-output-folder = This platform uses the default video output folder.
render-page-label = Chart rendering
render-settings-not-saved = Settings were not saved
render-field-requires-picker = This setting requires selecting a file, folder, or resource pack

render-pack-id-invalid = Invalid resource pack ID. Please select the render resource pack again.
render-pack-file-missing = Resource pack was removed or cannot be read. Please select it again.
render-pack-info-invalid = Resource pack information is invalid. Please select the render resource pack again.
render-game-pack-removed = Gameplay resource pack was removed. Please select a gameplay or render resource pack again.
render-selected-pack-removed = Render resource pack was removed. Please select it again.
render-current-pack-unavailable = Resource pack unavailable
render-builtin-phira = Built-in Phira
render-follow-game-settings-with-pack = Follow gameplay settings ({ $name })

render-field-resolution-name = Resolution
render-field-fps-name = Frame rate
render-field-directory-name = Output directory
render-field-resource-pack-name = Resource pack
render-field-offset-indicator-name = Offset indicator
render-field-ap-fc-indicator-name = AP/FC judgement-line indicator
render-field-double-hint-name = Double-note highlight
render-field-particle-name = Hit effects
render-field-accuracy-display-name = Show accuracy
render-field-judgement-details-name = Judgement statistics
render-field-perfect-combo-name = Perfect combo
render-field-early-late-name = Early/Late statistics
render-field-preset-name = Visual preset
render-field-font-name = Presentation font
render-field-reset-font-name = Default presentation font
render-field-opening-name = Export opening
render-field-playing-name = Export chart
render-field-ending-name = Export results
render-field-hud-name = Show gameplay HUD
render-field-opening-duration-name = Opening duration
render-field-enter-duration-name = Gameplay entrance
render-field-exit-duration-name = Gameplay exit
render-field-ending-duration-name = Results duration
render-field-title-name = Track title
render-field-composer-name = Composer
render-field-charter-name = Charter
render-field-illustrator-name = Illustrator
render-field-difficulty-name = Difficulty text
render-field-level-name = Level number
render-field-superscript-name = Level superscript
render-field-subscript-name = Level subscript
render-field-tip-name = Tip text
render-field-loading-name = Loading text
render-field-player-name = Player name
render-field-avatar-name = Player avatar
render-field-reset-avatar-name = Default avatar
render-field-rks-name = RKS
render-field-challenge-name = Challenge badge text
render-field-challenge-color-name = Challenge badge color
render-field-score-increase-name = Score increase text
render-field-collected-title-name = Collected item title
render-field-collected-text-name = Collected item text
render-field-result-source-name = Statistics source
render-field-score-name = Displayed score
render-field-accuracy-name = Displayed accuracy
render-field-combo-name = Displayed max combo
render-field-perfect-name = Perfect count
render-field-good-name = Good count
render-field-bad-name = Bad count
render-field-miss-name = Miss count
render-field-hitsound-name = Mix hitsounds
render-field-music-volume-name = Music volume
render-field-hitsound-volume-name = Hitsound volume
render-field-ending-volume-name = Results music volume
render-field-ending-delay-name = Results music delay
render-field-fade-name = Audio fade in/out
render-field-resolution-help = Video output dimensions
render-field-fps-help = Offline frame-by-frame rendering, independent of screen refresh rate
render-field-directory-help = Videos are named using the chart title and difficulty
render-field-resource-pack-help = Follows gameplay settings by default; can be selected separately for video without changing gameplay assets
render-field-offset-indicator-help = Follows the gameplay HUD by default; can be enabled or disabled separately. Auto-play offset is zero
render-field-ap-fc-indicator-help = Colored according to AP or FC status; also applies to auto-play
render-field-double-hint-help = Uses the double-note style from the selected resource pack
render-field-particle-help = Uses hit effects from the selected resource pack
render-field-accuracy-display-help = Can be displayed separately when the gameplay HUD is disabled
render-field-judgement-details-help = Shows counts for each judgement tier; can be displayed separately when the gameplay HUD is disabled
render-field-perfect-combo-help = Replaces the combo count in the gameplay HUD; requires the gameplay HUD to be enabled
render-field-early-late-help = Shows actual early/late judgement counts; can be displayed separately when the gameplay HUD is disabled
render-field-preset-help = Switches timeline presets while preserving entered display text
render-field-font-help = Select a TTF or OTF font, used only for opening and ending screens
render-field-reset-font-help = Restore the built-in presentation font
render-field-opening-help = Loading screen and track information
render-field-playing-help = Includes chart music and auto-play
render-field-ending-help = A separate results screen; does not write an actual score
render-field-hud-help = Score, combo, track title and chart-bound interface
render-field-opening-duration-help = 1–60 seconds, including loading and transitions
render-field-enter-duration-help = 0–5 seconds; 0 starts immediately
render-field-exit-duration-help = 0–5 seconds; 0 ends immediately
render-field-ending-duration-help = 2–120 seconds, including outro and entrance
render-field-title-help = Leave blank to use the chart title; shared by loading and results screens
render-field-composer-help = Leave blank to use the chart metadata
render-field-charter-help = Leave blank to use the chart metadata
render-field-illustrator-help = Leave blank to use the chart metadata
render-field-difficulty-help = For example, IN Lv.15; leave blank to use the chart metadata
render-field-level-help = Level shown in the loading-screen difficulty block
render-field-superscript-help = Optional additional difficulty text
render-field-subscript-help = Optional additional difficulty text
render-field-tip-help = Leave blank to use the chart tip or gameplay loading entry
render-field-loading-help = Leave blank to show Loading...
render-field-player-help = Used only in the exported video
render-field-avatar-help = Choose a local image for the results screen
render-field-reset-avatar-help = Restore the built-in avatar
render-field-rks-help = Leave blank to hide; used only in the video
render-field-challenge-help = Leave blank to hide
render-field-challenge-color-help = Neutral, green, blue, red, gold or rainbow
render-field-score-increase-help = Optional, e.g. +0000123
render-field-collected-title-help = The entire panel is hidden when the collected-item text is empty
render-field-collected-text-help = Optional results-screen information
render-field-result-source-help = Automatic statistics or separately configured video display values
render-field-score-help = Applies to custom display; maximum 1,000,000
render-field-accuracy-help = Applies to custom display; 0–100%
render-field-combo-help = Applies to custom display
render-field-perfect-help = Applies to custom display
render-field-good-help = Applies to custom display
render-field-bad-help = Applies to custom display
render-field-miss-help = Applies to custom display
render-field-hitsound-help = Use the chart's custom hitsounds
render-field-music-volume-help = 0–2; 1 is the original volume
render-field-hitsound-volume-help = 0–2; independent of music volume
render-field-ending-volume-help = 0–2; uses the selected resource pack's results music
render-field-ending-delay-help = 0–10 seconds, relative to the start of the results screen
render-field-fade-help = 0–5 seconds, applied to music segments and results music

settings-search-no-results = No matching settings
settings-search-diagnostics = Diagnostics
settings-search-hotkeys = Hotkey management
