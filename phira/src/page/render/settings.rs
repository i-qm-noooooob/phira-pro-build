//! A single catalog drives category pages, editing and the complete parameter overview.
use super::{Prefs, FPS_CHOICES, RESOLUTIONS};
use anyhow::{bail, Result};
use prpr::chart_video::{PresentationOptions, PresentationStyle};
prpr_l10n::tl_file!("settings");

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Category {
    Output,
    Visuals,
    Flow,
    Opening,
    Ending,
    Audio,
    Overview,
}
pub const CATEGORIES: [Category; 7] = [
    Category::Output,
    Category::Visuals,
    Category::Flow,
    Category::Opening,
    Category::Ending,
    Category::Audio,
    Category::Overview,
];
impl Category {
    pub fn label(self) -> String {
        match self {
            Self::Output => tl!("render-category-output").into_owned(),
            Self::Visuals => tl!("render-category-visuals").into_owned(),
            Self::Flow => tl!("render-category-flow").into_owned(),
            Self::Opening => tl!("render-category-opening").into_owned(),
            Self::Ending => tl!("render-category-ending").into_owned(),
            Self::Audio => tl!("render-category-audio").into_owned(),
            Self::Overview => tl!("render-category-overview").into_owned(),
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Kind {
    Toggle,
    Choice,
    Text,
    Number,
    Folder,
    Avatar,
    ResetAvatar,
    Font,
    ResourcePack,
}

macro_rules! fields {
    ($($field:ident => ($category:ident, $kind:ident, $name:literal, $help:literal)),* $(,)?) => {
        #[derive(Clone, Copy, Debug, PartialEq, Eq)]
        #[repr(usize)]
        pub enum Field { $($field),* }
        pub const FIELDS: &[Field] = &[$(Field::$field),*];
        impl Field {
            pub fn info(self) -> (Category, Kind, String, String) {
                match self {
                    $(Self::$field => (
                        Category::$category,
                        Kind::$kind,
                        tl!(concat!("render-field-", stringify!($field), "-name")).into_owned(),
                        tl!(concat!("render-field-", stringify!($field), "-help")).into_owned()
                    )),*
                }
            }
        }
    };
}
fields! {
    Resolution => (Output, Choice, "分辨率", "视频输出尺寸"),
    Fps => (Output, Choice, "帧率", "逐帧离线渲染，不受屏幕刷新率限制"),
    Directory => (Output, Folder, "输出目录", "视频按谱面标题和难度命名"),
    ResourcePack => (Output, ResourcePack, "资源包", "默认跟随游玩设置，也可为视频单独选择，不改变游玩资源包"),
    OffsetIndicator => (Visuals, Choice, "偏移指示器", "默认跟随主游玩界面，可单独开启或关闭，自动播放偏移为零"),
    ApFcIndicator => (Visuals, Toggle, "判定线 AP/FC 指示器", "按 AP 或 FC 状态着色，自动播放也生效"),
    DoubleHint => (Visuals, Toggle, "双押高亮", "使用所选资源包的双押音符样式"),
    Particle => (Visuals, Toggle, "打击特效", "使用所选资源包的命中特效"),
    AccuracyDisplay => (Visuals, Toggle, "显示准度", "可在主游玩界面关闭时单独显示"),
    JudgementDetails => (Visuals, Toggle, "判定统计", "显示各档判定数量，可在主游玩界面关闭时单独显示"),
    PerfectCombo => (Visuals, Toggle, "Perfect 连击", "以 Perfect 连击替换主游玩界面的连击数，需要开启显示游玩界面"),
    EarlyLate => (Visuals, Toggle, "Early/Late 统计", "显示实际早晚判定数量，可在主游玩界面关闭时单独显示"),
    Preset => (Flow, Choice, "画面预设", "切换流程预设，保留已填写的展示文字"),
    Font => (Flow, Font, "演出字体", "选择 TTF 或 OTF，仅用于开场与结算"),
    ResetFont => (Flow, Choice, "默认演出字体", "恢复内置演出字体"),
    Opening => (Flow, Toggle, "导出开场", "加载画面与曲目信息"),
    Playing => (Flow, Toggle, "导出谱面", "包含谱面音乐与自动播放"),
    Ending => (Flow, Toggle, "导出结算", "独立展示画面，不写入实际成绩"),
    Hud => (Flow, Toggle, "显示游玩界面", "分数、连击、曲名及谱面绑定的界面"),
    OpeningDuration => (Flow, Number, "开场时长", "1 到 60 秒，包含加载与转场"),
    EnterDuration => (Flow, Number, "游玩入场", "0 到 5 秒，0 表示直接开始"),
    ExitDuration => (Flow, Number, "游玩退场", "0 到 5 秒，0 表示直接结束"),
    EndingDuration => (Flow, Number, "结算时长", "2 到 120 秒，包含收尾与入场"),
    Title => (Opening, Text, "曲名", "留空跟随谱面，加载和结算共用"),
    Composer => (Opening, Text, "曲师", "留空跟随谱面"),
    Charter => (Opening, Text, "谱师", "留空跟随谱面"),
    Illustrator => (Opening, Text, "画师", "留空跟随谱面"),
    Difficulty => (Opening, Text, "难度文本", "例如 IN Lv.15，留空跟随谱面"),
    Level => (Opening, Text, "等级数字", "加载画面难度块中的等级"),
    Superscript => (Opening, Text, "等级上标", "可选的附加难度文字"),
    Subscript => (Opening, Text, "等级下标", "可选的附加难度文字"),
    Tip => (Opening, Text, "提示文字", "留空使用谱面提示或游玩加载条目"),
    Loading => (Opening, Text, "加载文字", "留空显示 Loading..."),
    Player => (Ending, Text, "玩家名", "仅用于导出画面"),
    Avatar => (Ending, Avatar, "玩家头像", "选择本地图片，用于结算展示"),
    ResetAvatar => (Ending, ResetAvatar, "默认头像", "恢复内置头像"),
    Rks => (Ending, Number, "RKS", "留空隐藏，仅用于视频展示"),
    Challenge => (Ending, Text, "课题牌子文字", "留空隐藏"),
    ChallengeColor => (Ending, Choice, "课题牌子颜色", "中性、绿、蓝、红、金、彩"),
    ScoreIncrease => (Ending, Text, "分数增加文字", "可选，例如 +0000123"),
    CollectedTitle => (Ending, Text, "获得内容标题", "获得内容留空时整个面板隐藏"),
    CollectedText => (Ending, Text, "获得内容", "可选的结算展示信息"),
    ResultSource => (Ending, Choice, "统计来源", "自动统计或单独设置视频展示值"),
    Score => (Ending, Number, "展示分数", "自定义展示时生效，最高 1000000"),
    Accuracy => (Ending, Number, "展示准度", "自定义展示时生效，0 到 100%"),
    Combo => (Ending, Number, "展示最大连击", "自定义展示时生效"),
    Perfect => (Ending, Number, "Perfect 数量", "自定义展示时生效"),
    Good => (Ending, Number, "Good 数量", "自定义展示时生效"),
    Bad => (Ending, Number, "Bad 数量", "自定义展示时生效"),
    Miss => (Ending, Number, "Miss 数量", "自定义展示时生效"),
    Hitsound => (Audio, Toggle, "混入打击音", "跟随谱面自定义打击音"),
    MusicVolume => (Audio, Number, "音乐音量", "0 到 2，1 为原始音量"),
    HitsoundVolume => (Audio, Number, "打击音音量", "0 到 2，独立于音乐音量"),
    EndingVolume => (Audio, Number, "结算音量", "0 到 2，使用所选资源包的结算音乐"),
    EndingDelay => (Audio, Number, "结算音乐延迟", "0 到 10 秒，相对结算开始时间"),
    Fade => (Audio, Number, "音频淡入淡出", "0 到 5 秒，用于音乐片段及结算音乐"),
}

pub fn value(p: &Prefs, field: Field) -> String {
    let presentation = &p.presentation;
    let m = &presentation.metadata;
    let r = &presentation.result;
    let a = &presentation.audio;
    fn flag(value: bool) -> String {
        if value { tl!("render-value-on").into_owned() } else { tl!("render-value-off").into_owned() }
    }
    fn text(value: &str) -> String {
        if value.is_empty() {
            tl!("render-value-follow-default").into_owned()
        } else {
            value.replace('\n', " ")
        }
    }
    match field {
        Field::ResourcePack => match &p.resource_pack {
            super::resource_pack::Selection::FollowGame => tl!("render-value-follow-game-settings").into_owned(),
            super::resource_pack::Selection::Builtin => tl!("render-value-builtin-default").into_owned(),
            super::resource_pack::Selection::Imported(_) => tl!("render-value-imported-pack").into_owned(),
        },
        Field::OffsetIndicator => match p.visuals.offset_indicator {
            None => tl!("render-value-follow-gameplay-hud").into_owned(),
            Some(true) => tl!("render-value-on").into_owned(),
            Some(false) => tl!("render-value-off").into_owned(),
        },
        Field::ApFcIndicator => flag(p.visuals.ap_fc_indicator),
        Field::DoubleHint => flag(p.visuals.double_hint),
        Field::Particle => flag(p.visuals.particle),
        Field::AccuracyDisplay => flag(p.visuals.show_acc),
        Field::JudgementDetails => flag(p.visuals.show_judgement_details),
        Field::PerfectCombo => flag(p.visuals.show_perfect_combo),
        Field::EarlyLate => flag(p.visuals.show_early_late),
        Field::Font => if presentation.font.is_some() {
            tl!("render-value-font-selected").into_owned()
        } else {
            tl!("render-value-builtin-font").into_owned()
        },
        Field::ResetFont => tl!("render-value-reset-default").into_owned(),
        Field::Resolution => {
            let (w, h) = RESOLUTIONS[p.res.min(RESOLUTIONS.len() - 1)];
            format!("{w} × {h}")
        }
        Field::Fps => format!("{} FPS", FPS_CHOICES[p.fps.min(FPS_CHOICES.len() - 1)]),
        Field::Directory => {
            if p.out_dir.is_empty() {
                "data/render".into()
            } else {
                p.out_dir.clone()
            }
        }
        Field::Preset => if presentation.style == PresentationStyle::Phigros {
            tl!("render-value-phigros-presentation").into_owned()
        } else if p.hud {
            tl!("render-value-phira-hud").into_owned()
        } else {
            tl!("render-value-chart-only").into_owned()
        },
        Field::Opening => flag(presentation.opening),
        Field::Playing => flag(presentation.playing),
        Field::Ending => flag(presentation.ending),
        Field::Hud => flag(p.hud),
        Field::OpeningDuration => format!("{} {}", presentation.opening_seconds, tl!("render-unit-seconds")),
        Field::EnterDuration => format!("{} {}", presentation.enter_seconds, tl!("render-unit-seconds")),
        Field::ExitDuration => format!("{} {}", presentation.exit_seconds, tl!("render-unit-seconds")),
        Field::EndingDuration => format!("{} {}", presentation.ending_seconds, tl!("render-unit-seconds")),
        Field::Title => text(&m.title),
        Field::Composer => text(&m.composer),
        Field::Charter => text(&m.charter),
        Field::Illustrator => text(&m.illustrator),
        Field::Difficulty => text(&m.difficulty),
        Field::Level => text(&m.level),
        Field::Superscript => text(&m.superscript),
        Field::Subscript => text(&m.subscript),
        Field::Tip => text(&m.tip),
        Field::Loading => text(&m.loading_text),
        Field::Player => text(&r.player_name),
        Field::Avatar => if r.avatar.is_some() { tl!("render-value-image-selected").into_owned() } else { tl!("render-value-builtin-avatar").into_owned() },
        Field::ResetAvatar => tl!("render-value-reset-default").into_owned(),
        Field::Rks => r.rks.map(|v| format!("{v:.2}")).unwrap_or_else(|| tl!("render-value-hidden").into_owned()),
        Field::Challenge => text(&r.challenge),
        Field::ChallengeColor => [tl!("render-color-neutral"), tl!("render-color-green"), tl!("render-color-blue"), tl!("render-color-red"), tl!("render-color-gold"), tl!("render-color-rainbow")][r.challenge_color.min(5)].into_owned(),
        Field::ScoreIncrease => text(&r.score_increase),
        Field::CollectedTitle => text(&r.collected_title),
        Field::CollectedText => text(&r.collected_text),
        Field::ResultSource => if r.custom { tl!("render-value-custom-display").into_owned() } else { tl!("render-value-auto-statistics").into_owned() },
        Field::Score => r.score.to_string(),
        Field::Accuracy => format!("{:.2}%", r.accuracy),
        Field::Combo => r.max_combo.to_string(),
        Field::Perfect => r.counts[0].to_string(),
        Field::Good => r.counts[1].to_string(),
        Field::Bad => r.counts[2].to_string(),
        Field::Miss => r.counts[3].to_string(),
        Field::Hitsound => flag(p.hitsound),
        Field::MusicVolume => format!("{:.2}", a.music_volume),
        Field::HitsoundVolume => format!("{:.2}", a.hitsound_volume),
        Field::EndingVolume => format!("{:.2}", a.ending_volume),
        Field::EndingDelay => format!("{} {}", a.ending_delay_seconds, tl!("render-unit-seconds")),
        Field::Fade => format!("{} {}", a.fade_seconds, tl!("render-unit-seconds")),
    }
}

pub fn input_value(p: &Prefs, field: Field) -> String {
    let text = value(p, field);
    let follow_default = tl!("render-value-follow-default").into_owned();
    let seconds_suffix = format!(" {}", tl!("render-unit-seconds"));
    match field {
        Field::Rks if p.presentation.result.rks.is_none() => String::new(),
        _ if text == follow_default => String::new(),
        _ => text.trim_end_matches(seconds_suffix.as_str()).trim_end_matches('%').to_owned(),
    }
}

pub fn is_on_value(value: &str) -> bool { value == tl!("render-value-on") }

pub fn enabled(p: &Prefs, field: Field) -> bool {
    match field {
        Field::PerfectCombo => p.hud,
        Field::Score | Field::Accuracy | Field::Combo | Field::Perfect | Field::Good | Field::Bad | Field::Miss => p.presentation.result.custom,
        _ => true,
    }
}

pub fn change(p: &mut Prefs, field: Field, input: Option<&str>) -> Result<()> {
    let old = p.clone();
    let result = change_inner(p, field, input);
    if result.is_err() {
        *p = old;
    }
    result
}

fn change_inner(p: &mut Prefs, field: Field, input: Option<&str>) -> Result<()> {
    let input = input.unwrap_or("").trim();
    let presentation = &mut p.presentation;
    let m = &mut presentation.metadata;
    let r = &mut presentation.result;
    let a = &mut presentation.audio;
    match field {
        Field::OffsetIndicator => {
            p.visuals.offset_indicator = match p.visuals.offset_indicator {
                None => Some(true),
                Some(true) => Some(false),
                Some(false) => None,
            }
        }
        Field::ApFcIndicator => p.visuals.ap_fc_indicator ^= true,
        Field::DoubleHint => p.visuals.double_hint ^= true,
        Field::Particle => p.visuals.particle ^= true,
        Field::AccuracyDisplay => p.visuals.show_acc ^= true,
        Field::JudgementDetails => p.visuals.show_judgement_details ^= true,
        Field::PerfectCombo => p.visuals.show_perfect_combo ^= true,
        Field::EarlyLate => p.visuals.show_early_late ^= true,
        Field::Resolution => p.res = (p.res + 1) % RESOLUTIONS.len(),
        Field::Fps => p.fps = (p.fps + 1) % FPS_CHOICES.len(),
        Field::Preset => {
            let next = if presentation.style == PresentationStyle::Phigros {
                0
            } else if p.hud {
                2
            } else {
                1
            };
            let recommended = if next == 2 {
                PresentationOptions::phigros()
            } else {
                PresentationOptions::default()
            };
            presentation.style = recommended.style;
            presentation.opening = recommended.opening;
            presentation.playing = true;
            presentation.ending = recommended.ending;
            presentation.enter_seconds = recommended.enter_seconds;
            presentation.exit_seconds = recommended.exit_seconds;
            p.hud = next != 0;
        }
        Field::Opening => presentation.opening ^= true,
        Field::Playing => presentation.playing ^= true,
        Field::Ending => presentation.ending ^= true,
        Field::Hud => p.hud ^= true,
        Field::OpeningDuration => presentation.opening_seconds = input.parse()?,
        Field::EnterDuration => presentation.enter_seconds = input.parse()?,
        Field::ExitDuration => presentation.exit_seconds = input.parse()?,
        Field::EndingDuration => presentation.ending_seconds = input.parse()?,
        Field::Title => m.title = input.into(),
        Field::Composer => m.composer = input.into(),
        Field::Charter => m.charter = input.into(),
        Field::Illustrator => m.illustrator = input.into(),
        Field::Difficulty => m.difficulty = input.into(),
        Field::Level => m.level = input.into(),
        Field::Superscript => m.superscript = input.into(),
        Field::Subscript => m.subscript = input.into(),
        Field::Tip => m.tip = input.into(),
        Field::Loading => m.loading_text = input.into(),
        Field::Player => r.player_name = input.into(),
        Field::ResetAvatar => r.avatar = None,
        Field::Rks => r.rks = if input.is_empty() { None } else { Some(input.parse()?) },
        Field::Challenge => r.challenge = input.into(),
        Field::ChallengeColor => r.challenge_color = (r.challenge_color + 1) % 6,
        Field::ScoreIncrease => r.score_increase = input.into(),
        Field::CollectedTitle => r.collected_title = input.into(),
        Field::CollectedText => r.collected_text = input.into(),
        Field::ResultSource => r.custom ^= true,
        Field::Score => r.score = input.parse()?,
        Field::Accuracy => r.accuracy = input.parse()?,
        Field::Combo => r.max_combo = input.parse()?,
        Field::Perfect => r.counts[0] = input.parse()?,
        Field::Good => r.counts[1] = input.parse()?,
        Field::Bad => r.counts[2] = input.parse()?,
        Field::Miss => r.counts[3] = input.parse()?,
        Field::Hitsound => p.hitsound ^= true,
        Field::MusicVolume => a.music_volume = input.parse()?,
        Field::HitsoundVolume => a.hitsound_volume = input.parse()?,
        Field::EndingVolume => a.ending_volume = input.parse()?,
        Field::EndingDelay => a.ending_delay_seconds = input.parse()?,
        Field::Fade => a.fade_seconds = input.parse()?,
        Field::ResetFont => presentation.font = None,
        Field::Directory | Field::Avatar | Field::Font | Field::ResourcePack => bail!(tl!("render-field-requires-picker")),
    }
    p.presentation.validate()
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn catalog_ids_are_unique_and_invalid_edits_are_transactional() {
        let mut p = Prefs::default();
        for (i, &field) in FIELDS.iter().enumerate() {
            assert_eq!(field as usize, i);
            assert!(!field.info().2.is_empty());
        }
        assert!(change(&mut p, Field::OpeningDuration, Some("NaN")).is_err());
        assert_eq!(p.presentation.opening_seconds, 5.8);
        assert!(change(&mut p, Field::MusicVolume, Some("-1")).is_err());
        assert_eq!(p.presentation.audio.music_volume, 1.);
        assert!(change(&mut p, Field::Playing, None).is_err());
        assert!(p.presentation.playing);
        change(&mut p, Field::Preset, None).unwrap();
        change(&mut p, Field::Preset, None).unwrap();
        assert_eq!(p.presentation.style, PresentationStyle::Phigros);
        assert!(p.presentation.opening && p.presentation.ending && p.hud);
    }
}
