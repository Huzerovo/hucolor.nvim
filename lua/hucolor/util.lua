-- hucolor.nvim · 高亮应用工具
local util = {}
local hucolor = require("hucolor.theme")

-- 应用单个高亮组；兼容 style 字符串与 bold/italic 布尔写法
-- 使用 nvim_set_hl，避免字符串拼接 vim.cmd 的转义问题
util.highlight = function(group, color)
	if color.link then
		vim.api.nvim_set_hl(0, group, { link = color.link })
		return
	end

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

	local attrs = {}
	if color.fg then
		attrs.fg = color.fg
	end
	if color.bg then
		attrs.bg = color.bg
	end
	if color.sp then
		attrs.sp = color.sp
	end
	for _, name in ipairs(vim.split(style, ",")) do
		if name ~= "NONE" then
			attrs[name] = true
		end
	end

	vim.api.nvim_set_hl(0, group, attrs)
end

-- 仅在 hucolor 仍是当前配色时保留 autocmd，切换配色后自动清理
function util.onColorScheme()
	if vim.g.colors_name ~= "hucolor" then
		vim.cmd([[autocmd! hucolor]])
		vim.cmd([[augroup! hucolor]])
	end
end

-- contrast 模式下：终端 / packer / qf 窗口沿用浮窗背景
util.contrast = function()
	vim.cmd([[augroup hucolor]])
	vim.cmd([[  autocmd!]])
	vim.cmd([[  autocmd ColorScheme * lua require("hucolor.util").onColorScheme()]])
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
	vim.g.colors_name = "hucolor"

	util.loadColorSet(hucolor.loadEditor())
	util.loadColorSet(hucolor.loadSyntax())
	util.loadColorSet(hucolor.loadTreeSitter())
	util.loadColorSet(hucolor.loadFiletypes())

	hucolor.loadTerminal()

	util.loadColorSet(hucolor.loadPlugins())
	util.loadColorSet(hucolor.loadLSP())

	if vim.g.hucolor_contrast == true then
		util.contrast()
	end
end

return util
