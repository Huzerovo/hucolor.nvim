-- hucolor.nvim · 基础语法高亮组
local hucolor = require("hucolor.colors")
local style = require("hucolor.style")

local M = {}

M.load = function()
	return {
		Type = { fg = hucolor.blue }, -- int, long, char, etc.
		StorageClass = { fg = hucolor.blue }, -- static, register, volatile, etc.
		Structure = { fg = hucolor.blue }, -- struct, union, enum, etc.
		Constant = { fg = hucolor.fg0 }, -- any constant
		Character = { fg = hucolor.green }, -- any character constant: 'c', '\n'
		Number = { fg = hucolor.purple }, -- a number constant: 5
		Boolean = { fg = hucolor.blue_bright }, -- a boolean constant: TRUE, false
		Float = { fg = hucolor.purple }, -- a floating point constant: 2.3e10
		Statement = { fg = hucolor.blue }, -- any statement
		Label = { fg = hucolor.blue }, -- case, default, etc.
		Operator = { fg = hucolor.blue }, -- sizeof", "+", "*", etc.
		Exception = { fg = hucolor.blue }, -- try, catch, throw
		PreProc = { fg = hucolor.yellow }, -- generic Preprocessor
		Include = { fg = hucolor.blue }, -- preprocessor #include
		Define = { fg = hucolor.yellow }, -- preprocessor #define
		Macro = { fg = hucolor.yellow }, -- same as Define
		Typedef = { fg = hucolor.blue }, -- A typedef
		PreCondit = { fg = hucolor.yellow }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = hucolor.fg0 }, -- any special symbol
		SpecialChar = { fg = hucolor.yellow }, -- special character in a constant
		Tag = { fg = hucolor.blue }, -- you can use CTRL-] on this
		Delimiter = { fg = hucolor.fg2 }, -- character that needs attention like , or .
		SpecialComment = { fg = hucolor.cyan }, -- special things inside a comment
		Debug = { fg = hucolor.red }, -- debugging statements
		Underlined = { fg = hucolor.green, bg = hucolor.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = hucolor.bg3_bright }, -- left blank, hidden
		Todo = { fg = hucolor.yellow, bg = hucolor.none, style = style.bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = hucolor.none, bg = hucolor.bg0 },
		htmlLink = { fg = hucolor.green, style = "underline" },
		markdownH1Delimiter = { fg = hucolor.orange },
		markdownH2Delimiter = { fg = hucolor.yellow },
		markdownH3Delimiter = { fg = hucolor.green },
		htmlH1 = { fg = hucolor.orange, style = style.bold },
		htmlH2 = { fg = hucolor.yellow, style = style.bold },
		htmlH3 = { fg = hucolor.green, style = style.bold },
		htmlH4 = { fg = hucolor.purple, style = style.bold },
		htmlH5 = { fg = hucolor.blue, style = style.bold },
		markdownH1 = { fg = hucolor.orange, style = style.bold },
		markdownH2 = { fg = hucolor.yellow, style = style.bold },
		markdownH3 = { fg = hucolor.green, style = style.bold },
		Error = { fg = hucolor.red, bg = hucolor.none, style = style.bold_underline }, -- any erroneous construct with bold
		Comment = { fg = hucolor.fg2, style = style.italic }, -- italic comments
		Conditional = { fg = hucolor.blue, style = style.italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = hucolor.orange, style = style.italic }, -- italic function names
		Identifier = { fg = hucolor.fg1, style = style.italic }, -- any variable name
		Keyword = { fg = hucolor.blue, style = style.italic }, -- italic for, do, while, etc.
		Repeat = { fg = hucolor.blue, style = style.italic }, -- italic any other keyword
		String = { fg = hucolor.green, style = style.italic }, -- any string
	}
end

return M
