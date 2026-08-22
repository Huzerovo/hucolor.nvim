-- hucolor.nvim · 文件类型专属高亮组
local hucolor = require("hucolor.colors")
local style = require("hucolor.style")

local M = {}

M.load = function()
	return {
		-- yaml
		yamlBlockMappingKey = { fg = hucolor.orange },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = hucolor.orange },
		yamlTSString = { fg = hucolor.fg1 },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = hucolor.orange }, -- stephpy/vim-yaml

		-- json
		jsonKeyword = { fg = hucolor.blue },
		jsonBoolean = { link = "Boolean" },
		jsonNumber = { link = "Number" },
		jsonString = { link = "String" },
		jsonQuote = { fg = hucolor.fg2 },
		jsonNoise = { fg = hucolor.fg2 },

		-- markdown（非 treesitter 场景）
		markdownCode = { fg = hucolor.rose },
		markdownCodeBlock = { fg = hucolor.rose },
		markdownLinkText = { fg = hucolor.blue },
		markdownUrl = { fg = hucolor.green, style = "underline" },
		markdownItalic = { style = style.italic },
		markdownBold = { style = style.bold },

		-- diff 文件
		diffAdded = { fg = hucolor.green },
		diffRemoved = { fg = hucolor.red },
		diffChanged = { fg = hucolor.yellow },
		diffOldFile = { fg = hucolor.yellow },
		diffNewFile = { fg = hucolor.orange },
		diffFile = { fg = hucolor.blue },
		diffLine = { fg = hucolor.fg3 },
		diffIndexLine = { fg = hucolor.blue },

		-- help
		helpCommand = { fg = hucolor.green },
		helpExample = { fg = hucolor.orange },
		helpHyperTextEntry = { fg = hucolor.blue },
		helpHyperTextJump = { fg = hucolor.blue, style = "underline" },
	}
end

return M
