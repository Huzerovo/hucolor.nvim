-- hucolor.nvim · 高亮组定义汇总
-- 各分类高亮组拆分至 highlights/ 目录，结构参照 shaunsingh/nord.nvim（GPL-2.0）
local syntax = require("hucolor.highlights.syntax")
local editor = require("hucolor.highlights.editor")
local treesitter = require("hucolor.highlights.treesitter")
local filetypes = require("hucolor.highlights.filetypes")
local lsp = require("hucolor.highlights.lsp")
local plugins = require("hucolor.highlights.plugins")

local theme = {}

theme.loadSyntax = syntax.load
theme.loadEditor = editor.load
theme.loadTreeSitter = treesitter.load
theme.loadFiletypes = filetypes.load
theme.loadLSP = lsp.load
theme.loadPlugins = plugins.load

theme.loadTerminal = function()
	local hucolor = require("hucolor.colors")
	-- 终端 ANSI 16 色（红随语义红，其余按 hucolor 语义取色）
	vim.g.terminal_color_0 = hucolor.black
	vim.g.terminal_color_1 = hucolor.red
	vim.g.terminal_color_2 = hucolor.green
	vim.g.terminal_color_3 = hucolor.yellow
	vim.g.terminal_color_4 = hucolor.blue
	vim.g.terminal_color_5 = hucolor.purple
	vim.g.terminal_color_6 = hucolor.cyan
	vim.g.terminal_color_7 = hucolor.fg0
	vim.g.terminal_color_8 = hucolor.bright_black
	vim.g.terminal_color_9 = hucolor.orange
	vim.g.terminal_color_10 = hucolor.bright_green
	vim.g.terminal_color_11 = hucolor.bright_yellow
	vim.g.terminal_color_12 = hucolor.blue_bright
	vim.g.terminal_color_13 = hucolor.bright_purple
	vim.g.terminal_color_14 = hucolor.bright_cyan
	vim.g.terminal_color_15 = hucolor.white
end

return theme
