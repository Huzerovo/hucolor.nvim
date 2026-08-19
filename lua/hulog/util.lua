-- hulog.nvim · 高亮应用工具
local util = {}
local hulog = require("hulog.theme")

-- 应用单个高亮组；兼容 style 字符串与 bold/italic 布尔写法
util.highlight = function(group, color)
	local style = color.style or "NONE"
	local function add_style(name)
		if not vim.tbl_contains(vim.split(style, ","), name) then
			style = style == "NONE" and name or style .. "," .. name
		end
	end
	if color.bold then
		add_style("bold")
	end
	if color.italic then
		add_style("italic")
	end

	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""

	vim.cmd("highlight " .. group .. " gui=" .. style .. " " .. fg .. " " .. bg .. " " .. sp)
	if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	end
end

-- 仅在 hulog 仍是当前配色时保留 autocmd，切换配色后自动清理
function util.onColorScheme()
	if vim.g.colors_name ~= "hulog" then
		vim.cmd([[autocmd! hulog]])
		vim.cmd([[augroup! hulog]])
	end
end

-- contrast 模式下：终端 / packer / qf 窗口沿用浮窗背景
util.contrast = function()
	vim.cmd([[augroup hulog]])
	vim.cmd([[  autocmd!]])
	vim.cmd([[  autocmd ColorScheme * lua require("hulog.util").onColorScheme()]])
	vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[augroup end]])
end

util.loadColorSet = function(colorSet)
	for group, colors in pairs(colorSet) do
		util.highlight(group, colors)
	end
end

-- 加载主题
util.load = function()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "hulog"

	util.loadColorSet(hulog.loadEditor())
	util.loadColorSet(hulog.loadSyntax())
	util.loadColorSet(hulog.loadTreeSitter())
	util.loadColorSet(hulog.loadFiletypes())

	hulog.loadTerminal()

	util.loadColorSet(hulog.loadPlugins())
	util.loadColorSet(hulog.loadLSP())

	if vim.g.hulog_contrast == true then
		util.contrast()
	end
end

return util
