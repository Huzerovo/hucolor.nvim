-- hucolor.nvim · 语义色映射
-- 按 vim.o.background 选择暗/亮变体，并处理 sidebar/float/cursorline 等派生角色
local named = require("hucolor.named_colors")

local dark_colors = {
	bg0 = named.bg,
	bg1 = named.bg_elevated,
	bg2 = named.bg_subtle,
	bg3 = named.line,
	bg3_bright = named.line_strong,

	fg0 = named.text_strong,
	fg1 = named.text,
	fg2 = named.text_muted,
	fg3 = named.text_faint,

	blue = named.accent,
	blue_bright = named.accent_strong,
	purple = named.accent_visited,
	green = named.done,
	orange = named.warm,
	yellow = named.warn,
	red = named.red,
	cyan = named.cyan,
	rose = named.code_text,
	mark = named.mark,

	black = named.black,
	bright_black = named.bright_black,
	bright_green = named.bright_green,
	bright_purple = named.bright_purple,
	bright_cyan = named.bright_cyan,
	white = named.white,

	none = "NONE",
}

local light_colors = {
	bg0 = named.light_bg,
	bg1 = named.light_bg_elevated,
	bg2 = named.light_bg_subtle,
	bg3 = named.light_line,
	bg3_bright = named.light_line_strong,

	fg0 = named.light_text_strong,
	fg1 = named.light_text,
	fg2 = named.light_text_muted,
	fg3 = named.light_text_faint,

	blue = named.light_accent,
	blue_bright = named.light_accent_strong,
	purple = named.light_accent_visited,
	green = named.light_done,
	orange = named.light_warm,
	yellow = named.light_warn,
	red = named.light_red,
	cyan = named.light_cyan,
	rose = named.light_code_text,
	mark = named.light_mark,

	-- 亮色模式终端色（无亮色终端可对照，取等价语义：黑=最深文字，亮色=对应基础色）
	black = named.light_text_strong,
	bright_black = named.light_text,
	bright_green = named.light_done,
	bright_purple = named.light_accent_visited,
	bright_cyan = named.light_cyan,
	white = named.light_bg_elevated,

	none = "NONE",
}

local hucolor = (vim.o.background == "light") and light_colors or dark_colors

-- 侧栏 / 浮窗背景：开启 contrast 时用 elevated，否则与编辑器同底
if vim.g.hucolor_contrast then
	hucolor.sidebar = hucolor.bg1
	hucolor.float = hucolor.bg1
else
	hucolor.sidebar = hucolor.bg0
	hucolor.float = hucolor.bg0
end

-- cursorline：可选透明（回到编辑器底色）
if vim.g.hucolor_cursorline_transparent then
	hucolor.cursorlinefg = hucolor.bg0
else
	hucolor.cursorlinefg = hucolor.bg1
end

return hucolor
