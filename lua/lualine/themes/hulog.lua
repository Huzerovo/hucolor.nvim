-- hulog.nvim · lualine 主题
-- 用法：require('lualine').setup { options = { theme = 'hulog' } }
local colors = require("hulog.colors")

local hulog = {}

hulog.normal = {
	a = { fg = colors.bg0, bg = colors.blue },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hulog.insert = {
	a = { fg = colors.bg0, bg = colors.green },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hulog.visual = {
	a = { fg = colors.bg0, bg = colors.orange },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hulog.replace = {
	a = { fg = colors.bg0, bg = colors.red },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hulog.command = {
	a = { fg = colors.bg0, bg = colors.yellow, gui = "bold" },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hulog.terminal = {
	a = { fg = colors.bg0, bg = colors.purple },
	b = { fg = colors.fg1, bg = colors.bg2 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

hulog.inactive = {
	a = { fg = colors.fg2, bg = colors.bg1, gui = "bold" },
	b = { fg = colors.fg2, bg = colors.bg0 },
	c = { fg = colors.fg2, bg = colors.bg1 },
}

return hulog
