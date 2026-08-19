-- hulog.nvim · 原始色板
-- 直接取自 hulog 主题的 CSS 变量（examples/themes/default/assets/css）
-- 暗色为默认变体；亮色对应 CSS 亮色变体
-- red / cyan 为色板缺失色相的派生补充（与 hulog konsole 配色一致）
local hulog = {
	-- 背景层级（dark，整体 +6 提亮，与 hulog Konsole 背景 #1a1a1d 同步）
	bg = "#1a1a1d", -- 同步 Konsole Background
	bg_elevated = "#232329", -- 同步后保持层级（旧 bg2 值）
	bg_subtle = "#292930",
	line = "#34343b",
	line_strong = "#40404a",

	-- 文字层级（dark）
	text = "#c9c9cf", -- --hulog-text
	text_strong = "#f1f1f4", -- --hulog-text-strong
	text_muted = "#8e8e97", -- --hulog-text-muted
	text_faint = "#67676f", -- --hulog-text-faint

	-- 强调色（dark）
	accent = "#a3a4ff", -- --hulog-accent 靛蓝
	accent_strong = "#b9baff", -- --hulog-accent-strong
	accent_visited = "#c792ea", -- --hulog-accent-visited 兰花紫
	warm = "#f0a35e", -- --hulog-warm 暖橙

	-- 语义色（dark）
	code_text = "#d08a50", -- --hulog-code-text 锈橙
	done = "#4cc36a", -- --hulog-done
	warn = "#e8a23d", -- --hulog-warn
	mark = "#4a3b20", -- --hulog-mark

	-- 派生补充（dark）：色板缺失色相
	red = "#d9582e", -- 亮色 warm（深陶土红）
	cyan = "#7cc6cf", -- 低饱和青，与靛蓝同冷色族

	-- 终端 16 色补充（同步 hulog.konsole 亮色段；bright_black 即补全提示色）
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

return hulog
