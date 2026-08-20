-- hucolor.nvim · 编辑器 UI 高亮组
local hucolor = require("hucolor.colors")
local style = require("hucolor.style")

local M = {}

M.load = function()
	local editor = {
		NormalFloat = { fg = hucolor.fg1, bg = hucolor.float }, -- normal text and background color
		FloatBorder = { fg = hucolor.fg2, bg = hucolor.float },
		ColorColumn = { fg = hucolor.none, bg = hucolor.bg1 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = hucolor.bg3_bright }, -- placeholder characters substituted for concealed text
		Cursor = { fg = hucolor.fg0, bg = hucolor.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = hucolor.fg1, bg = hucolor.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = hucolor.blue, bg = hucolor.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = hucolor.bg1 },
		ErrorMsg = { fg = hucolor.red },
		Folded = { fg = hucolor.fg3, bg = hucolor.none, style = style.italic },
		FoldColumn = { fg = hucolor.fg3 },
		IncSearch = { fg = hucolor.bg0, bg = hucolor.orange },
		LineNr = { fg = hucolor.fg3 },
		CursorLineNr = { fg = hucolor.fg0 },
		MatchParen = { fg = hucolor.orange, bg = hucolor.none, style = style.bold },
		ModeMsg = { fg = hucolor.fg1 },
		MoreMsg = { fg = hucolor.green },
		NonText = { fg = hucolor.bg3_bright },
		Pmenu = { fg = hucolor.fg1, bg = hucolor.bg2 },
		PmenuSel = { fg = hucolor.bg0, bg = hucolor.blue },
		PmenuSbar = { fg = hucolor.fg1, bg = hucolor.bg2 },
		PmenuThumb = { fg = hucolor.fg1, bg = hucolor.fg3 },
		Question = { fg = hucolor.green },
		QuickFixLine = { fg = hucolor.blue, bg = hucolor.none, style = "reverse" },
		qfLineNr = { fg = hucolor.blue, bg = hucolor.none, style = "reverse" },
		Search = { fg = hucolor.bg0, bg = hucolor.blue },
		Substitute = { fg = hucolor.bg0, bg = hucolor.yellow },
		SpecialKey = { fg = hucolor.blue },
		SpellBad = { fg = hucolor.red, bg = hucolor.none, style = style.italic_undercurl },
		SpellCap = { fg = hucolor.yellow, bg = hucolor.none, style = style.italic_undercurl },
		SpellLocal = { fg = hucolor.cyan, bg = hucolor.none, style = style.italic_undercurl },
		SpellRare = { fg = hucolor.orange, bg = hucolor.none, style = style.italic_undercurl },
		StatusLine = { fg = hucolor.fg1, bg = hucolor.bg2 },
		StatusLineNC = { fg = hucolor.fg2, bg = hucolor.bg1 },
		StatusLineTerm = { fg = hucolor.fg1, bg = hucolor.bg2 },
		StatusLineTermNC = { fg = hucolor.fg2, bg = hucolor.bg1 },
		TabLineFill = { fg = hucolor.fg2, bg = hucolor.bg0 },
		TabLineSel = { fg = hucolor.bg0, bg = hucolor.blue },
		TabLine = { fg = hucolor.fg2, bg = hucolor.bg1 },
		Title = { fg = hucolor.green, bg = hucolor.none, style = style.bold },
		Visual = { fg = hucolor.none, bg = hucolor.bg2 },
		VisualNOS = { fg = hucolor.none, bg = hucolor.bg2 },
		WarningMsg = { fg = hucolor.yellow },
		WildMenu = { fg = hucolor.orange, bg = hucolor.none, style = style.bold },
		CursorColumn = { fg = hucolor.none, bg = hucolor.cursorlinefg },
		CursorLine = { fg = hucolor.none, bg = hucolor.cursorlinefg },
		ToolbarLine = { fg = hucolor.fg1, bg = hucolor.bg1 },
		ToolbarButton = { fg = hucolor.blue, bg = hucolor.none, style = style.bold },
		NormalMode = { fg = hucolor.blue, bg = hucolor.none, style = "reverse" },
		InsertMode = { fg = hucolor.green, bg = hucolor.none, style = "reverse" },
		ReplaceMode = { fg = hucolor.red, bg = hucolor.none, style = "reverse" },
		VisualMode = { fg = hucolor.orange, bg = hucolor.none, style = "reverse" },
		CommandMode = { fg = hucolor.yellow, bg = hucolor.none, style = "reverse" },
		LspInlayHint = { fg = hucolor.fg3, style = style.italic },

		healthError = { fg = hucolor.red },
		healthSuccess = { fg = hucolor.green },
		healthWarning = { fg = hucolor.yellow },

		-- dashboard
		DashboardShortCut = { fg = hucolor.orange },
		DashboardHeader = { fg = hucolor.blue },
		DashboardCenter = { fg = hucolor.blue_bright },
		DashboardFooter = { fg = hucolor.green, style = style.italic },
	}

	-- 背景选项
	if vim.g.hucolor_disable_background then
		editor.Normal = { fg = hucolor.fg1, bg = hucolor.none }
		editor.SignColumn = { fg = hucolor.fg1, bg = hucolor.none }
	else
		editor.Normal = { fg = hucolor.fg1, bg = hucolor.bg0 }
		editor.SignColumn = { fg = hucolor.fg1, bg = hucolor.bg0 }
	end

	-- 窗口分割线
	if vim.g.hucolor_borders then
		editor.VertSplit = { fg = hucolor.bg2 }
	else
		editor.VertSplit = { fg = hucolor.bg0 }
	end

	-- diff 背景
	if vim.g.hucolor_uniform_diff_background then
		editor.DiffAdd = { fg = hucolor.green, bg = hucolor.bg1 } -- diff mode: Added line
		editor.DiffChange = { fg = hucolor.yellow, bg = hucolor.bg1 } -- diff mode: Changed line
		editor.DiffDelete = { fg = hucolor.red, bg = hucolor.bg1 } -- diff mode: Deleted line
		editor.DiffText = { fg = hucolor.purple, bg = hucolor.bg1 } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = hucolor.green, bg = hucolor.none, style = "reverse" }
		editor.DiffChange = { fg = hucolor.yellow, bg = hucolor.none, style = "reverse" }
		editor.DiffDelete = { fg = hucolor.red, bg = hucolor.none, style = "reverse" }
		editor.DiffText = { fg = hucolor.purple, bg = hucolor.none, style = "reverse" }
	end

	return editor
end

return M
