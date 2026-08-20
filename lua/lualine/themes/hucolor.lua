-- hucolor.nvim · lualine 主题
-- 用法：require('lualine').setup { options = { theme = 'hucolor' } }
local colors = require("hucolor.colors")

local hucolor = {}

hucolor.normal = {
	a = { fg = colors.bg0, bg = colors.blue },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hucolor.insert = {
	a = { fg = colors.bg0, bg = colors.green },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hucolor.visual = {
	a = { fg = colors.bg0, bg = colors.orange },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hucolor.replace = {
	a = { fg = colors.bg0, bg = colors.red },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hucolor.command = {
	a = { fg = colors.bg0, bg = colors.yellow, gui = "bold" },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hucolor.terminal = {
	a = { fg = colors.bg0, bg = colors.purple },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hucolor.inactive = {
	a = { fg = colors.fg2, bg = colors.bg1, gui = "bold" },
	b = { fg = colors.fg2, bg = colors.bg0 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

return hucolor
