-- hucolor.nvim · 样式变体（bold/italic 开关解析）
local hucolor = require("hucolor.colors")

local italic = vim.g.hucolor_italic == false and hucolor.none or "italic"
local italic_undercurl = vim.g.hucolor_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.hucolor_bold == false and hucolor.none or "bold"
local reverse_bold = vim.g.hucolor_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.hucolor_bold == false and "underline" or "bold,underline"
local bold_italic
if vim.g.hucolor_bold == false then
	bold_italic = vim.g.hucolor_italic == false and hucolor.none or "italic"
elseif vim.g.hucolor_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

local style = {
	italic = italic,
	italic_undercurl = italic_undercurl,
	bold = bold,
	reverse_bold = reverse_bold,
	bold_underline = bold_underline,
	bold_italic = bold_italic,
}

return style
