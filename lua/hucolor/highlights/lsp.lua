-- hucolor.nvim · LSP 诊断高亮组（旧 LspDiagnostics* + 新 Diagnostic* 链接）
local hucolor = require("hucolor.colors")
local style = require("hucolor.style")

local M = {}

M.load = function()
	return {
		LspDiagnosticsDefaultError = { fg = hucolor.red },
		LspDiagnosticsSignError = { fg = hucolor.red },
		LspDiagnosticsFloatingError = { fg = hucolor.red },
		LspDiagnosticsVirtualTextError = { fg = hucolor.red },
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = hucolor.red },
		LspDiagnosticsDefaultWarning = { fg = hucolor.yellow },
		LspDiagnosticsSignWarning = { fg = hucolor.yellow },
		LspDiagnosticsFloatingWarning = { fg = hucolor.yellow },
		LspDiagnosticsVirtualTextWarning = { fg = hucolor.yellow },
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = hucolor.yellow },
		LspDiagnosticsDefaultInformation = { fg = hucolor.cyan },
		LspDiagnosticsSignInformation = { fg = hucolor.cyan },
		LspDiagnosticsFloatingInformation = { fg = hucolor.cyan },
		LspDiagnosticsVirtualTextInformation = { fg = hucolor.cyan },
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = hucolor.cyan },
		LspDiagnosticsDefaultHint = { fg = hucolor.cyan },
		LspDiagnosticsSignHint = { fg = hucolor.cyan },
		LspDiagnosticsFloatingHint = { fg = hucolor.cyan },
		LspDiagnosticsVirtualTextHint = { fg = hucolor.cyan },
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = hucolor.cyan },
		LspReferenceText = { fg = hucolor.fg1, bg = hucolor.bg1 },
		LspReferenceRead = { fg = hucolor.fg1, bg = hucolor.bg1 },
		LspReferenceWrite = { fg = hucolor.fg1, bg = hucolor.bg1 },

		-- 新命名 → 链接旧命名（保留旧名以兼容老配置）
		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
		DiagnosticUnnecessary = { fg = hucolor.fg3 },
		DiagnosticDeprecated = { fg = hucolor.fg3, style = "strikethrough" },
		LspSignatureActiveParameter = { fg = hucolor.orange, style = style.bold },
	}
end

return M
