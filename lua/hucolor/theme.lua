-- hucolor.nvim · 高亮组定义
-- 结构参照 shaunsingh/nord.nvim（MIT），配色为 hucolor 主题
local hucolor = require("hucolor.colors")

local theme = {}

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

theme.loadSyntax = function()
	-- 基础语法组
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
		Todo = { fg = hucolor.yellow, bg = hucolor.none, style = bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = hucolor.none, bg = hucolor.bg0 },
		htmlLink = { fg = hucolor.green, style = "underline" },
		markdownH1Delimiter = { fg = hucolor.orange },
		markdownH2Delimiter = { fg = hucolor.yellow },
		markdownH3Delimiter = { fg = hucolor.green },
		htmlH1 = { fg = hucolor.orange, style = bold },
		htmlH2 = { fg = hucolor.yellow, style = bold },
		htmlH3 = { fg = hucolor.green, style = bold },
		htmlH4 = { fg = hucolor.purple, style = bold },
		htmlH5 = { fg = hucolor.blue, style = bold },
		markdownH1 = { fg = hucolor.orange, style = bold },
		markdownH2 = { fg = hucolor.yellow, style = bold },
		markdownH3 = { fg = hucolor.green, style = bold },
		Error = { fg = hucolor.red, bg = hucolor.none, style = bold_underline }, -- any erroneous construct with bold
		Comment = { fg = hucolor.fg2, style = italic }, -- italic comments
		Conditional = { fg = hucolor.blue, style = italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = hucolor.orange, style = italic }, -- italic function names
		Identifier = { fg = hucolor.fg1, style = italic }, -- any variable name
		Keyword = { fg = hucolor.blue, style = italic }, -- italic for, do, while, etc.
		Repeat = { fg = hucolor.blue, style = italic }, -- italic any other keyword
		String = { fg = hucolor.green, style = italic }, -- any string
	}
end

theme.loadEditor = function()
	-- 编辑器 UI 组
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
		Folded = { fg = hucolor.fg3, bg = hucolor.none, style = italic },
		FoldColumn = { fg = hucolor.fg3 },
		IncSearch = { fg = hucolor.bg0, bg = hucolor.orange },
		LineNr = { fg = hucolor.fg3 },
		CursorLineNr = { fg = hucolor.fg0 },
		MatchParen = { fg = hucolor.orange, bg = hucolor.none, style = bold },
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
		SpellBad = { fg = hucolor.red, bg = hucolor.none, style = italic_undercurl },
		SpellCap = { fg = hucolor.yellow, bg = hucolor.none, style = italic_undercurl },
		SpellLocal = { fg = hucolor.cyan, bg = hucolor.none, style = italic_undercurl },
		SpellRare = { fg = hucolor.orange, bg = hucolor.none, style = italic_undercurl },
		StatusLine = { fg = hucolor.fg1, bg = hucolor.bg2 },
		StatusLineNC = { fg = hucolor.fg2, bg = hucolor.bg1 },
		StatusLineTerm = { fg = hucolor.fg1, bg = hucolor.bg2 },
		StatusLineTermNC = { fg = hucolor.fg2, bg = hucolor.bg1 },
		TabLineFill = { fg = hucolor.fg2, bg = hucolor.bg0 },
		TabLineSel = { fg = hucolor.bg0, bg = hucolor.blue },
		TabLine = { fg = hucolor.fg2, bg = hucolor.bg1 },
		Title = { fg = hucolor.green, bg = hucolor.none, style = bold },
		Visual = { fg = hucolor.none, bg = hucolor.bg2 },
		VisualNOS = { fg = hucolor.none, bg = hucolor.bg2 },
		WarningMsg = { fg = hucolor.yellow },
		WildMenu = { fg = hucolor.orange, bg = hucolor.none, style = bold },
		CursorColumn = { fg = hucolor.none, bg = hucolor.cursorlinefg },
		CursorLine = { fg = hucolor.none, bg = hucolor.cursorlinefg },
		ToolbarLine = { fg = hucolor.fg1, bg = hucolor.bg1 },
		ToolbarButton = { fg = hucolor.blue, bg = hucolor.none, style = bold },
		NormalMode = { fg = hucolor.blue, bg = hucolor.none, style = "reverse" },
		InsertMode = { fg = hucolor.green, bg = hucolor.none, style = "reverse" },
		ReplaceMode = { fg = hucolor.red, bg = hucolor.none, style = "reverse" },
		VisualMode = { fg = hucolor.orange, bg = hucolor.none, style = "reverse" },
		CommandMode = { fg = hucolor.yellow, bg = hucolor.none, style = "reverse" },
		LspInlayHint = { fg = hucolor.fg3, style = italic },

		healthError = { fg = hucolor.red },
		healthSuccess = { fg = hucolor.green },
		healthWarning = { fg = hucolor.yellow },

		-- dashboard
		DashboardShortCut = { fg = hucolor.orange },
		DashboardHeader = { fg = hucolor.blue },
		DashboardCenter = { fg = hucolor.blue_bright },
		DashboardFooter = { fg = hucolor.green, style = italic },
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

theme.loadTerminal = function()
	-- 终端 ANSI 16 色（暗色红 = 语义红 #e0554a；其余与 hucolor Konsole 配色逐项一致）
	vim.g.terminal_color_0 = hucolor.black
	vim.g.terminal_color_1 = hucolor.red
	vim.g.terminal_color_2 = hucolor.green
	vim.g.terminal_color_3 = hucolor.yellow
	vim.g.terminal_color_4 = hucolor.blue
	vim.g.terminal_color_5 = hucolor.purple
	vim.g.terminal_color_6 = hucolor.cyan
	vim.g.terminal_color_7 = hucolor.fg0
	vim.g.terminal_color_8 = hucolor.bright_black
	vim.g.terminal_color_9 = hucolor.orange
	vim.g.terminal_color_10 = hucolor.bright_green
	vim.g.terminal_color_11 = hucolor.bright_yellow
	vim.g.terminal_color_12 = hucolor.blue_bright
	vim.g.terminal_color_13 = hucolor.bright_purple
	vim.g.terminal_color_14 = hucolor.bright_cyan
	vim.g.terminal_color_15 = hucolor.white
end

theme.loadTreeSitter = function()
	-- TreeSitter 高亮（旧 TS* 名）
	local treesitter = {
		TSAnnotation = { fg = hucolor.purple }, -- For C++/Dart attributes, annotations
		TSAttribute = { fg = hucolor.purple },
		TSBoolean = { fg = hucolor.blue_bright, style = bold },
		TSCharacter = { fg = hucolor.green, style = italic },
		TSComment = { fg = hucolor.fg2, style = italic },
		TSConditional = { fg = hucolor.blue, style = italic },
		TSConstBuiltin = { fg = hucolor.orange, style = bold },
		TSConstMacro = { fg = hucolor.orange, style = bold },
		TSConstant = { fg = hucolor.fg0 },
		TSConstructor = { fg = hucolor.blue },
		TSEmphasis = { fg = hucolor.blue, style = italic },
		TSError = { fg = hucolor.red },
		TSException = { fg = hucolor.yellow },
		TSField = { fg = hucolor.fg1, style = italic },
		TSFloat = { fg = hucolor.purple },
		TSFuncBuiltin = { fg = hucolor.orange, style = italic },
		TSFuncMacro = { fg = hucolor.orange, style = italic },
		TSFunction = { fg = hucolor.orange, style = italic },
		TSInclude = { fg = hucolor.blue },
		TSKeyword = { fg = hucolor.blue, style = italic },
		TSKeywordFunction = { fg = hucolor.blue, style = italic },
		TSKeywordOperator = { fg = hucolor.blue, style = italic },
		TSKeywordReturn = { fg = hucolor.blue, style = italic },
		TSLabel = { fg = hucolor.yellow },
		TSLiteral = { fg = hucolor.fg1 },
		TSMethod = { fg = hucolor.orange, style = italic },
		TSNamespace = { fg = hucolor.fg0, style = italic },
		TSNumber = { fg = hucolor.purple },
		TSOperator = { fg = hucolor.blue },
		TSParameter = { fg = hucolor.fg1, style = italic },
		TSParameterReference = { fg = hucolor.fg1, style = italic },
		TSProperty = { fg = hucolor.blue, style = italic },
		TSPunctBracket = { fg = hucolor.fg2 },
		TSPunctDelimiter = { fg = hucolor.fg2 },
		TSPunctSpecial = { fg = hucolor.fg2 },
		TSRepeat = { fg = hucolor.blue, style = italic },
		TSString = { fg = hucolor.green, style = italic },
		TSStringEscape = { fg = hucolor.yellow, style = italic },
		TSStringRegex = { fg = hucolor.cyan, style = italic },
		TSSymbol = { fg = hucolor.purple },
		TSTag = { fg = hucolor.blue },
		TSTagDelimiter = { fg = hucolor.fg2 },
		TSText = { fg = hucolor.fg1 },
		TSTextReference = { fg = hucolor.purple, style = bold },
		TSTitle = { fg = hucolor.orange, bg = hucolor.none, style = bold },
		TSType = { fg = hucolor.blue },
		TSTypeBuiltin = { fg = hucolor.blue },
		TSUnderline = { fg = hucolor.fg1, style = "underline" },
		TSURI = { fg = hucolor.green, style = "underline" },
		TSVariable = { fg = hucolor.fg1 },
		TSVariableBuiltin = { fg = hucolor.fg0, style = bold },
	}

	-- 现代 @capture 名
	local captures = {
		["@annotation"] = { fg = hucolor.purple },
		["@attribute"] = { fg = hucolor.purple },
		["@boolean"] = { fg = hucolor.blue_bright, style = bold },
		["@character"] = { fg = hucolor.green, style = italic },
		["@character.special"] = { fg = hucolor.yellow, style = italic },
		["@comment"] = { fg = hucolor.fg2, style = italic },
		["@conditional"] = { fg = hucolor.blue, style = italic },
		["@constant"] = { fg = hucolor.fg0 },
		["@constant.builtin"] = { fg = hucolor.orange, style = bold },
		["@constant.macro"] = { fg = hucolor.orange, style = bold },
		["@constructor"] = { fg = hucolor.blue },
		["@debug"] = { fg = hucolor.red },
		["@define"] = { fg = hucolor.yellow },
		["@error"] = { fg = hucolor.red },
		["@exception"] = { fg = hucolor.yellow },
		["@field"] = { fg = hucolor.fg1, style = italic },
		["@float"] = { fg = hucolor.purple },
		["@function"] = { fg = hucolor.orange, style = italic },
		["@function.builtin"] = { fg = hucolor.orange, style = italic },
		["@function.call"] = { fg = hucolor.orange, style = italic },
		["@function.macro"] = { fg = hucolor.orange, style = italic },
		["@function.method"] = { fg = hucolor.orange, style = italic },
		["@function.method.call"] = { fg = hucolor.orange, style = italic },
		["@include"] = { fg = hucolor.blue },
		["@keyword"] = { fg = hucolor.blue, style = italic },
		["@keyword.conditional"] = { fg = hucolor.blue, style = italic },
		["@keyword.coroutine"] = { fg = hucolor.blue, style = italic },
		["@keyword.debug"] = { fg = hucolor.red },
		["@keyword.exception"] = { fg = hucolor.yellow },
		["@keyword.function"] = { fg = hucolor.blue, style = italic },
		["@keyword.import"] = { fg = hucolor.blue, style = italic },
		["@keyword.operator"] = { fg = hucolor.blue, style = italic },
		["@keyword.repeat"] = { fg = hucolor.blue, style = italic },
		["@keyword.return"] = { fg = hucolor.blue, style = italic },
		["@label"] = { fg = hucolor.yellow },
		["@method"] = { fg = hucolor.orange, style = italic },
		["@method.call"] = { fg = hucolor.orange, style = italic },
		["@namespace"] = { fg = hucolor.fg0, style = italic },
		["@none"] = { fg = hucolor.fg1 },
		["@number"] = { fg = hucolor.purple },
		["@number.float"] = { fg = hucolor.purple },
		["@operator"] = { fg = hucolor.blue },
		["@parameter"] = { fg = hucolor.fg1, style = italic },
		["@parameter.reference"] = { fg = hucolor.fg1, style = italic },
		["@preproc"] = { fg = hucolor.yellow },
		["@property"] = { fg = hucolor.blue, style = italic },
		["@punctuation.bracket"] = { fg = hucolor.fg2 },
		["@punctuation.delimiter"] = { fg = hucolor.fg2 },
		["@punctuation.special"] = { fg = hucolor.fg2 },
		["@repeat"] = { fg = hucolor.blue, style = italic },
		["@storageclass"] = { fg = hucolor.blue },
		["@string"] = { fg = hucolor.green, style = italic },
		["@string.documentation"] = { fg = hucolor.green, style = italic },
		["@string.escape"] = { fg = hucolor.yellow, style = italic },
		["@string.regex"] = { fg = hucolor.cyan, style = italic },
		["@string.special"] = { fg = hucolor.yellow, style = italic },
		["@string.symbol"] = { fg = hucolor.purple },
		["@symbol"] = { fg = hucolor.purple },
		["@tag"] = { fg = hucolor.blue },
		["@tag.attribute"] = { fg = hucolor.yellow },
		["@tag.delimiter"] = { fg = hucolor.fg2 },
		["@text"] = { fg = hucolor.fg1 },
		["@text.danger"] = { fg = hucolor.red },
		["@text.diff.add"] = { fg = hucolor.green },
		["@text.diff.delete"] = { fg = hucolor.red },
		["@text.emphasis"] = { fg = hucolor.blue, style = italic },
		["@text.environment"] = { fg = hucolor.blue },
		["@text.environment.name"] = { fg = hucolor.orange, style = bold },
		["@text.literal"] = { fg = hucolor.fg1 },
		["@text.math"] = { fg = hucolor.cyan },
		["@text.note"] = { fg = hucolor.blue },
		["@text.reference"] = { fg = hucolor.purple, style = bold },
		["@text.strike"] = { fg = hucolor.fg1, style = "strikethrough" },
		["@text.strong"] = { fg = hucolor.orange, style = bold },
		["@text.title"] = { fg = hucolor.orange, style = bold },
		["@text.underline"] = { fg = hucolor.fg1, style = "underline" },
		["@text.uri"] = { fg = hucolor.green, style = "underline" },
		["@text.warning"] = { fg = hucolor.yellow },
		["@type"] = { fg = hucolor.blue },
		["@type.builtin"] = { fg = hucolor.blue },
		["@type.definition"] = { fg = hucolor.blue },
		["@type.qualifier"] = { fg = hucolor.blue, style = italic },
		["@variable"] = { fg = hucolor.fg1 },
		["@variable.builtin"] = { fg = hucolor.fg0, style = bold },
		["@variable.global"] = { fg = hucolor.fg1 },
		["@variable.member"] = { fg = hucolor.fg1, style = italic },
		["@variable.parameter"] = { fg = hucolor.fg1, style = italic },
	}

	return vim.tbl_extend("force", treesitter, captures)
end

theme.loadFiletypes = function()
	-- 文件类型专属组
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
		markdownCode = { fg = hucolor.rust },
		markdownCodeBlock = { fg = hucolor.rust },
		markdownLinkText = { fg = hucolor.blue },
		markdownUrl = { fg = hucolor.green, style = "underline" },
		markdownItalic = { style = italic },
		markdownBold = { style = bold },

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

theme.loadLSP = function()
	-- LSP 诊断（旧 LspDiagnostics* + 新 Diagnostic* 链接）
	local lsp = {
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
		LspDiagnosticsDefaultInformation = { fg = hucolor.blue },
		LspDiagnosticsSignInformation = { fg = hucolor.blue },
		LspDiagnosticsFloatingInformation = { fg = hucolor.blue },
		LspDiagnosticsVirtualTextInformation = { fg = hucolor.blue },
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = hucolor.blue },
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
		LspSignatureActiveParameter = { fg = hucolor.orange, style = bold },
	}

	return lsp
end

theme.loadPlugins = function()
	-- 插件高亮
	local plugins = {

		-- GitSigns / GitGutter
		GitSignsAdd = { fg = hucolor.green },
		GitSignsAddNr = { fg = hucolor.green },
		GitSignsAddLn = { fg = hucolor.green },
		GitSignsChange = { fg = hucolor.yellow },
		GitSignsChangeNr = { fg = hucolor.yellow },
		GitSignsChangeLn = { fg = hucolor.yellow },
		GitSignsDelete = { fg = hucolor.red },
		GitSignsDeleteNr = { fg = hucolor.red },
		GitSignsDeleteLn = { fg = hucolor.red },
		GitSignsCurrentLineBlame = { fg = hucolor.fg3, style = bold },
		GitGutterAdd = { fg = hucolor.green },
		GitGutterChange = { fg = hucolor.yellow },
		GitGutterDelete = { fg = hucolor.red },

		-- Telescope
		TelescopePromptBorder = { fg = hucolor.fg2 },
		TelescopeResultsBorder = { fg = hucolor.fg2 },
		TelescopePreviewBorder = { fg = hucolor.fg2 },
		TelescopeSelectionCaret = { fg = hucolor.orange },
		TelescopeSelection = { fg = hucolor.bg0, bg = hucolor.blue },
		TelescopeMatching = { link = "Search" },
		TelescopePromptPrefix = { fg = hucolor.orange },
		TelescopePromptTitle = { fg = hucolor.bg0, bg = hucolor.orange },
		TelescopeResultsTitle = { fg = hucolor.bg0, bg = hucolor.blue },
		TelescopePreviewTitle = { fg = hucolor.bg0, bg = hucolor.green },

		-- NvimTree
		NvimTreeRootFolder = { fg = hucolor.yellow },
		NvimTreeSymlink = { fg = hucolor.blue_bright },
		NvimTreeFolderName = { fg = hucolor.blue },
		NvimTreeFolderIcon = { fg = hucolor.blue },
		NvimTreeEmptyFolderName = { fg = hucolor.fg1 },
		NvimTreeOpenedFolderName = { fg = hucolor.blue_bright },
		NvimTreeExecFile = { fg = hucolor.fg1 },
		NvimTreeOpenedFile = { fg = hucolor.fg0 },
		NvimTreeSpecialFile = { fg = hucolor.blue, style = bold },
		NvimTreeImageFile = { fg = hucolor.fg1 },
		NvimTreeMarkdownFile = { fg = hucolor.fg1 },
		NvimTreeIndentMarker = { fg = hucolor.fg3 },
		NvimTreeGitDirty = { fg = hucolor.yellow },
		NvimTreeGitStaged = { fg = hucolor.yellow },
		NvimTreeGitMerge = { fg = hucolor.yellow },
		NvimTreeGitRenamed = { fg = hucolor.yellow },
		NvimTreeGitNew = { fg = hucolor.green },
		NvimTreeGitDeleted = { fg = hucolor.red },
		NvimTreeGitIgnored = { fg = hucolor.fg3 },

		-- WhichKey
		WhichKey = { fg = hucolor.orange, style = bold },
		WhichKeyGroup = { fg = hucolor.fg0 },
		WhichKeyDesc = { fg = hucolor.cyan, style = italic },
		WhichKeySeperator = { fg = hucolor.blue },
		WhichKeyFloating = { bg = hucolor.bg1 },
		WhichKeyFloat = { bg = hucolor.bg1 },
		WhichKeyValue = { fg = hucolor.green },

		-- nvim-cmp
		CmpItemAbbr = { fg = hucolor.fg1 },
		CmpItemAbbrMatch = { fg = hucolor.blue, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = hucolor.blue, style = bold },
		CmpItemMenu = { fg = hucolor.fg3 },
		CmpItemKind = { fg = hucolor.purple },
		CmpItemKindClass = { fg = hucolor.blue },
		CmpItemKindColor = { fg = hucolor.purple },
		CmpItemKindConstant = { fg = hucolor.yellow },
		CmpItemKindConstructor = { fg = hucolor.blue },
		CmpItemKindEnum = { fg = hucolor.blue },
		CmpItemKindEnumMember = { fg = hucolor.blue_bright },
		CmpItemKindEvent = { fg = hucolor.blue },
		CmpItemKindField = { fg = hucolor.fg1 },
		CmpItemKindFile = { fg = hucolor.fg1 },
		CmpItemKindFolder = { fg = hucolor.blue },
		CmpItemKindFunction = { fg = hucolor.orange },
		CmpItemKindInterface = { fg = hucolor.blue },
		CmpItemKindKeyword = { fg = hucolor.blue },
		CmpItemKindMethod = { fg = hucolor.orange },
		CmpItemKindModule = { fg = hucolor.fg0 },
		CmpItemKindOperator = { fg = hucolor.blue },
		CmpItemKindProperty = { fg = hucolor.blue, style = italic },
		CmpItemKindReference = { fg = hucolor.purple },
		CmpItemKindSnippet = { fg = hucolor.cyan },
		CmpItemKindStruct = { fg = hucolor.blue },
		CmpItemKindText = { fg = hucolor.fg1 },
		CmpItemKindTypeParameter = { fg = hucolor.blue_bright },
		CmpItemKindUnit = { fg = hucolor.fg1 },
		CmpItemKindValue = { fg = hucolor.purple },
		CmpItemKindVariable = { fg = hucolor.fg1 },

		-- indent-blankline（新旧两代命名）
		IndentBlanklineChar = { fg = hucolor.bg3 },
		IndentBlanklineContextChar = { fg = hucolor.blue_bright },
		IblIndent = { fg = hucolor.bg3 },
		IblScope = { fg = hucolor.fg2 },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = hucolor.fg3 },
		NotifyDEBUGIcon = { fg = hucolor.fg3 },
		NotifyDEBUGTitle = { fg = hucolor.fg3 },
		NotifyERRORBorder = { fg = hucolor.red },
		NotifyERRORIcon = { fg = hucolor.red },
		NotifyERRORTitle = { fg = hucolor.red },
		NotifyINFOBorder = { fg = hucolor.blue },
		NotifyINFOIcon = { fg = hucolor.blue },
		NotifyINFOTitle = { fg = hucolor.blue },
		NotifyTRACEBorder = { fg = hucolor.purple },
		NotifyTRACEIcon = { fg = hucolor.purple },
		NotifyTRACETitle = { fg = hucolor.purple },
		NotifyWARNBorder = { fg = hucolor.yellow },
		NotifyWARNIcon = { fg = hucolor.yellow },
		NotifyWARNTitle = { fg = hucolor.yellow },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },
		MiniCursorword = { bg = hucolor.bg3 },
		MiniCursorwordCurrent = { bg = hucolor.bg3 },
		MiniIndentscopeSymbol = { fg = hucolor.blue_bright },
		MiniIndentscopePrefix = { style = "nocombine" },
		MiniJump = { fg = hucolor.bg0, bg = hucolor.blue },
		MiniJump2dSpot = { fg = hucolor.orange, style = "bold,nocombine" },
		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = hucolor.green, style = italic },
		MiniStarterHeader = { fg = hucolor.blue },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = hucolor.fg1 },
		MiniStarterItemPrefix = { fg = hucolor.purple },
		MiniStarterSection = { fg = hucolor.fg1 },
		MiniStarterQuery = { fg = hucolor.blue_bright },
		MiniStatuslineDevinfo = { fg = hucolor.fg1, bg = hucolor.bg2 },
		MiniStatuslineFileinfo = { fg = hucolor.fg1, bg = hucolor.bg2 },
		MiniStatuslineFilename = { fg = hucolor.fg1, bg = hucolor.bg1 },
		MiniStatuslineInactive = { fg = hucolor.fg1, bg = hucolor.bg0, style = bold },
		MiniStatuslineModeCommand = { fg = hucolor.bg0, bg = hucolor.yellow, style = bold },
		MiniStatuslineModeInsert = { fg = hucolor.bg0, bg = hucolor.green, style = bold },
		MiniStatuslineModeNormal = { fg = hucolor.bg0, bg = hucolor.blue, style = bold },
		MiniStatuslineModeOther = { fg = hucolor.bg0, bg = hucolor.purple, style = bold },
		MiniStatuslineModeReplace = { fg = hucolor.bg0, bg = hucolor.red, style = bold },
		MiniStatuslineModeVisual = { fg = hucolor.bg0, bg = hucolor.orange, style = bold },
		MiniSurround = { link = "IncSearch" },
		MiniTablineCurrent = { bg = hucolor.bg1 },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = hucolor.bg0, fg = hucolor.fg3 },
		MiniTablineModifiedCurrent = { bg = hucolor.bg1, fg = hucolor.yellow },
		MiniTablineModifiedHidden = { bg = hucolor.bg0, fg = hucolor.yellow },
		MiniTablineModifiedVisible = { bg = hucolor.bg2, fg = hucolor.yellow },
		MiniTablineTabpagesection = { fg = hucolor.blue, bg = hucolor.fg0, style = reverse_bold },
		MiniTablineVisible = { bg = hucolor.bg2 },
		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = hucolor.red, style = bold },
		MiniTestPass = { fg = hucolor.green, style = bold },
		MiniTrailspace = { bg = hucolor.red },

		-- headlines.nvim（bg 为 bg0 与标题色的 10:1 混色，随新 bg0 重算）
		Headline1 = { fg = hucolor.orange, bg = "#362f2d", style = bold },
		Headline2 = { fg = hucolor.yellow, bg = "#352f2a", style = bold },
		Headline3 = { fg = hucolor.green, bg = "#27322e", style = bold },
		Headline4 = { fg = hucolor.blue, bg = "#2f2f3c", style = bold },
		Headline5 = { fg = hucolor.purple, bg = "#322d3a", style = bold },
		Headline6 = { fg = hucolor.blue_bright, bg = "#31313c", style = bold },
		Quote = { fg = hucolor.fg2 },
		CodeBlock = { bg = hucolor.bg1 },
		Dash = { fg = hucolor.blue, style = bold },

		-- illuminate
		illuminatedWord = { bg = hucolor.bg3 },
		illuminatedCurWord = { bg = hucolor.bg3 },
		IlluminatedWordText = { bg = hucolor.bg3 },
		IlluminatedWordRead = { bg = hucolor.bg3 },
		IlluminatedWordWrite = { bg = hucolor.bg3 },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = hucolor.yellow },
		LeapLabelPrimary = { style = "nocombine", fg = hucolor.bg0, bg = hucolor.yellow },
		LeapLabelSecondary = { style = "nocombine", fg = hucolor.bg0, bg = hucolor.purple },

		-- hop.nvim
		HopNextKey = { fg = hucolor.orange, style = bold },
		HopNextKey1 = { fg = hucolor.cyan, style = bold },
		HopNextKey2 = { fg = hucolor.fg1 },
		HopUnmatched = { fg = hucolor.fg3 },

		-- flash.nvim
		FlashLabel = { fg = hucolor.bg0, bg = hucolor.yellow },
		FlashMatch = { fg = hucolor.yellow, style = "underline,nocombine" },
		FlashCursor = { fg = hucolor.bg0, bg = hucolor.orange },
		FlashBackdrop = { fg = hucolor.fg3 },

		-- vim-sneak
		Sneak = { fg = hucolor.bg0, bg = hucolor.blue },
		SneakScope = { bg = hucolor.bg1 },

		-- rainbow-delimiters.nvim
		RainbowDelimiterRed = { fg = hucolor.red },
		RainbowDelimiterYellow = { fg = hucolor.yellow },
		RainbowDelimiterBlue = { fg = hucolor.blue },
		RainbowDelimiterOrange = { fg = hucolor.orange },
		RainbowDelimiterGreen = { fg = hucolor.green },
		RainbowDelimiterCyan = { fg = hucolor.cyan },
		RainbowDelimiterViolet = { fg = hucolor.purple },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = hucolor.purple },
		rainbowcol2 = { fg = hucolor.yellow },
		rainbowcol3 = { fg = hucolor.red },
		rainbowcol4 = { fg = hucolor.cyan },
		rainbowcol5 = { fg = hucolor.green },
		rainbowcol6 = { fg = hucolor.blue_bright },
		rainbowcol7 = { fg = hucolor.orange },

		-- aerial.nvim
		AerialLine = { bg = hucolor.bg2 },
		AerialLineNC = { bg = hucolor.bg2 },
		AerialArrayIcon = { fg = hucolor.yellow },
		AerialBooleanIcon = { fg = hucolor.blue_bright, style = bold },
		AerialClassIcon = { fg = hucolor.blue },
		AerialConstantIcon = { fg = hucolor.yellow },
		AerialConstructorIcon = { fg = hucolor.blue },
		AerialEnumIcon = { fg = hucolor.blue },
		AerialEnumMemberIcon = { fg = hucolor.blue_bright },
		AerialEventIcon = { fg = hucolor.blue },
		AerialFieldIcon = { fg = hucolor.fg1 },
		AerialFileIcon = { fg = hucolor.green },
		AerialFunctionIcon = { fg = hucolor.orange },
		AerialInterfaceIcon = { fg = hucolor.blue },
		AerialKeyIcon = { fg = hucolor.blue },
		AerialMethodIcon = { fg = hucolor.orange },
		AerialModuleIcon = { fg = hucolor.fg0 },
		AerialNamespaceIcon = { fg = hucolor.fg0 },
		AerialNullIcon = { fg = hucolor.blue },
		AerialNumberIcon = { fg = hucolor.purple },
		AerialObjectIcon = { fg = hucolor.blue },
		AerialOperatorIcon = { fg = hucolor.blue },
		AerialPackageIcon = { fg = hucolor.fg0 },
		AerialPropertyIcon = { fg = hucolor.blue, style = italic },
		AerialStringIcon = { fg = hucolor.green },
		AerialStructIcon = { fg = hucolor.blue },
		AerialTypeParameterIcon = { fg = hucolor.blue_bright },
		AerialVariableIcon = { fg = hucolor.fg1, style = bold },
		AerialArray = { fg = hucolor.yellow },
		AerialBoolean = { fg = hucolor.blue_bright, style = bold },
		AerialClass = { fg = hucolor.blue },
		AerialConstant = { fg = hucolor.yellow },
		AerialConstructor = { fg = hucolor.blue },
		AerialEnum = { fg = hucolor.blue },
		AerialEnumMember = { fg = hucolor.blue_bright },
		AerialEvent = { fg = hucolor.blue },
		AerialField = { fg = hucolor.fg1 },
		AerialFile = { fg = hucolor.green },
		AerialFunction = { fg = hucolor.orange },
		AerialInterface = { fg = hucolor.blue },
		AerialKey = { fg = hucolor.blue },
		AerialMethod = { fg = hucolor.orange },
		AerialModule = { fg = hucolor.fg0 },
		AerialNamespace = { fg = hucolor.fg0 },
		AerialNull = { fg = hucolor.blue },
		AerialNumber = { fg = hucolor.purple },
		AerialObject = { fg = hucolor.blue },
		AerialOperator = { fg = hucolor.blue },
		AerialPackage = { fg = hucolor.fg0 },
		AerialProperty = { fg = hucolor.blue, style = italic },
		AerialString = { fg = hucolor.green },
		AerialStruct = { fg = hucolor.blue },
		AerialTypeParameter = { fg = hucolor.blue_bright },
		AerialVariable = { fg = hucolor.fg1, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = hucolor.yellow },
		NavicIconsBoolean = { fg = hucolor.blue_bright, style = bold },
		NavicIconsClass = { fg = hucolor.blue },
		NavicIconsConstant = { fg = hucolor.yellow },
		NavicIconsConstructor = { fg = hucolor.blue },
		NavicIconsEnum = { fg = hucolor.blue },
		NavicIconsEnumMember = { fg = hucolor.blue_bright },
		NavicIconsEvent = { fg = hucolor.blue },
		NavicIconsField = { fg = hucolor.fg1 },
		NavicIconsFile = { fg = hucolor.green },
		NavicIconsFunction = { fg = hucolor.orange },
		NavicIconsInterface = { fg = hucolor.blue },
		NavicIconsKey = { fg = hucolor.blue },
		NavicIconsMethod = { fg = hucolor.orange },
		NavicIconsModule = { fg = hucolor.fg0 },
		NavicIconsNamespace = { fg = hucolor.fg0 },
		NavicIconsNull = { fg = hucolor.blue },
		NavicIconsNumber = { fg = hucolor.purple },
		NavicIconsObject = { fg = hucolor.blue },
		NavicIconsOperator = { fg = hucolor.blue },
		NavicIconsPackage = { fg = hucolor.fg0 },
		NavicIconsProperty = { fg = hucolor.blue, style = italic },
		NavicIconsString = { fg = hucolor.green },
		NavicIconsStruct = { fg = hucolor.blue },
		NavicIconsTypeParameter = { fg = hucolor.blue_bright },
		NavicIconsVariable = { fg = hucolor.fg1, style = bold },
		NavicText = { fg = hucolor.fg1 },
		NavicSeparator = { fg = hucolor.fg2 },

		-- nvim-dap
		DapBreakpoint = { fg = hucolor.green },
		DapStopped = { fg = hucolor.yellow },
		DapUIVariable = { fg = hucolor.fg1 },
		DapUIScope = { fg = hucolor.orange },
		DapUIType = { fg = hucolor.blue },
		DapUIValue = { fg = hucolor.fg1 },
		DapUIModifiedValue = { fg = hucolor.orange },
		DapUIDecoration = { fg = hucolor.orange },
		DapUIThread = { fg = hucolor.blue },
		DapUIStoppedThread = { fg = hucolor.blue_bright },
		DapUIFrameName = { fg = hucolor.fg1 },
		DapUISource = { fg = hucolor.blue },
		DapUILineNumber = { fg = hucolor.orange },
		DapUIFloatBorder = { fg = hucolor.orange },
		DapUIWatchesEmpty = { fg = hucolor.red },
		DapUIWatchesValue = { fg = hucolor.orange },
		DapUIWatchesError = { fg = hucolor.red },
		DapUIBreakpointsPath = { fg = hucolor.orange },
		DapUIBreakpointsInfo = { fg = hucolor.orange },
		DapUIBreakpointsCurrentLine = { fg = hucolor.orange },
		DapUIBreakpointsLine = { fg = hucolor.orange },

		-- Neogit
		NeogitBranch = { fg = hucolor.blue },
		NeogitRemote = { fg = hucolor.cyan },
		NeogitHunkHeader = { fg = hucolor.cyan },
		NeogitHunkHeaderHighlight = { fg = hucolor.cyan, bg = hucolor.bg1 },
		NeogitDiffContextHighlight = { bg = hucolor.bg1 },
		NeogitDiffDeleteHighlight = { fg = hucolor.red, style = "reverse" },
		NeogitDiffAddHighlight = { fg = hucolor.green, style = "reverse" },

		-- lsp-trouble
		LspTroubleText = { fg = hucolor.fg1 },
		LspTroubleCount = { fg = hucolor.bg0, bg = hucolor.blue },
		LspTroubleNormal = { fg = hucolor.fg1, bg = hucolor.sidebar },

		-- noice.nvim
		NoiceCmdlinePopup = { bg = hucolor.bg1 },
		NoiceCmdlinePopupBorder = { fg = hucolor.blue },
		NoiceCmdlineIcon = { fg = hucolor.orange },
		NoiceFormatProgressDone = { fg = hucolor.green },
		NoiceFormatProgressTodo = { fg = hucolor.fg3 },
		NoicePopupmenu = { bg = hucolor.bg1 },
		NoicePopupmenuBorder = { fg = hucolor.fg2 },

		-- treesitter-context
		TreesitterContext = { bg = hucolor.bg1 },
		TreesitterContextLineNumber = { fg = hucolor.fg3 },

		-- copilot
		CopilotLabel = { fg = hucolor.fg2, bg = hucolor.none },

		-- 自定义状态栏组（供 lualine/staline 等引用）
		StatusLineDull = { fg = hucolor.fg3, bg = hucolor.bg1 },
		StatusLineAccent = { fg = hucolor.bg0, bg = hucolor.orange },
	}

	-- 侧栏背景选项
	if vim.g.hucolor_disable_background then
		plugins.NvimTreeNormal = { fg = hucolor.fg1, bg = hucolor.none }
	elseif vim.g.hucolor_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = hucolor.fg1, bg = hucolor.sidebar }
	else
		plugins.NvimTreeNormal = { fg = hucolor.fg1, bg = hucolor.none }
	end

	return plugins
end

return theme
