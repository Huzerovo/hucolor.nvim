-- Colorscheme name:    hucolor.nvim
-- Description:         hucolor 主题（暖纸 + 靛蓝 + 陶土橙）for neovim
-- Author:              狐 (huzerovo)

local util = require("hucolor.util")

local M = {}

M.set = function()
	util.load()
end

-- bufferline 集成按需加载，避免硬依赖
M.bufferline = setmetatable({}, {
	__index = function(_, key)
		return require("hucolor.bufferline")[key]
	end,
})

return M
