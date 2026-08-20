-- hucolor.nvim · 原始色板
-- 直接取自 hucolor 主题的 CSS 变量（examples/themes/default/assets/css）
-- 暗色为默认变体；亮色对应 CSS 亮色变体
-- red / cyan 为色板缺失色相的派生补充（cyan 与 hucolor konsole 一致；red 独立取值）
local hucolor = {
	-- 背景层级（dark，定义 = 原 CSS 层级；提亮应用，bg0 与 Konsole 背景对齐）
	bg = "#232328", -- 提亮应用 bg0，同步 Konsole Background
	bg_elevated = "#2c2c34",
	bg_subtle = "#32323b",
	line = "#3d3d46",
	line_strong = "#494955",

	-- 文字层级（dark）
	text = "#c9c9cf", -- --hucolor-text
	text_strong = "#f1f1f4", -- --hucolor-text-strong
	text_muted = "#8e8e97", -- --hucolor-text-muted
	text_faint = "#67676f", -- --hucolor-text-faint

	-- 强调色（dark）
	accent = "#a3a4ff", -- --hucolor-accent 靛蓝
	accent_strong = "#b9baff", -- --hucolor-accent-strong
	accent_visited = "#c792ea", -- --hucolor-accent-visited 兰花紫
	warm = "#f0a35e", -- --hucolor-warm 暖橙

	-- 语义色（dark）
	code_text = "#d08a50", -- --hucolor-code-text 锈橙
	done = "#4cc36a", -- --hucolor-done
	warn = "#e8a23d", -- --hucolor-warn
	mark = "#4a3b20", -- --hucolor-mark

	-- 派生补充（dark）：色板缺失色相
	red = "#e0554a", -- 独立取值暖红（与亮色 warm 解耦）
	cyan = "#7cc6cf", -- 低饱和青，与靛蓝同冷色族

	-- 终端 16 色补充（同步 hucolor.konsole 亮色段；bright_black 即补全提示色）
	black = "#5a5a64", -- Konsole Color0
	bright_black = "#64646e", -- Konsole Color8
	bright_green = "#6fd98a", -- Konsole Color10
	bright_yellow = "#f0b45a", -- Konsole Color11
	bright_purple = "#d8b4f2", -- Konsole Color13
	bright_cyan = "#a5dae0", -- Konsole Color14
	white = "#ffffff", -- Konsole Color15

	-- 亮色变体（light，对应 CSS 亮色）
	light_bg = "#f7f7f5",
	light_bg_elevated = "#ffffff",
	light_bg_subtle = "#f0eee9",
	light_line = "#e5e3de",
	light_line_strong = "#d3d0c8",
	light_text = "#333333",
	light_text_strong = "#161616",
	light_text_muted = "#6d6d6d",
	light_text_faint = "#9b9b9b",
	light_accent = "#4a5cd4",
	light_accent_strong = "#3d4fc4",
	light_accent_visited = "#7d6fb8",
	light_warm = "#d9582e",
	light_code_text = "#9a4f1f",
	light_done = "#2e9e44",
	light_warn = "#d98a00",
	light_mark = "#f7e8c8",
	light_red = "#c94b3d", -- 派生：亮色无红，取暖红
	light_cyan = "#2f9eab", -- 派生

	none = "NONE",
}

return hucolor
