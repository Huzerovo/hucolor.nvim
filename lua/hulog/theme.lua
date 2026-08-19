-- hulog.nvim · 高亮组定义
-- 结构参照 shaunsingh/nord.nvim（MIT），配色为 hulog 主题
local hulog = require("hulog.colors")

local theme = {}

local italic = vim.g.hulog_italic == false and hulog.none or "italic"
local italic_undercurl = vim.g.hulog_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.hulog_bold == false and hulog.none or "bold"
local reverse_bold = vim.g.hulog_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.hulog_bold == false and "underline" or "bold,underline"
local bold_italic
if vim.g.hulog_bold == false then
	bold_italic = vim.g.hulog_italic == false and hulog.none or "italic"
elseif vim.g.hulog_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

theme.loadSyntax = function()
	-- 基础语法组
	return {
		Type = { fg = hulog.blue }, -- int, long, char, etc.
		StorageClass = { fg = hulog.blue }, -- static, register, volatile, etc.
		Structure = { fg = hulog.blue }, -- struct, union, enum, etc.
		Constant = { fg = hulog.fg0 }, -- any constant
		Character = { fg = hulog.green }, -- any character constant: 'c', '\n'
		Number = { fg = hulog.purple }, -- a number constant: 5
		Boolean = { fg = hulog.blue_bright }, -- a boolean constant: TRUE, false
		Float = { fg = hulog.purple }, -- a floating point constant: 2.3e10
		Statement = { fg = hulog.blue }, -- any statement
		Label = { fg = hulog.blue }, -- case, default, etc.
		Operator = { fg = hulog.blue }, -- sizeof", "+", "*", etc.
		Exception = { fg = hulog.blue }, -- try, catch, throw
		PreProc = { fg = hulog.yellow }, -- generic Preprocessor
		Include = { fg = hulog.blue }, -- preprocessor #include
		Define = { fg = hulog.yellow }, -- preprocessor #define
		Macro = { fg = hulog.yellow }, -- same as Define
		Typedef = { fg = hulog.blue }, -- A typedef
		PreCondit = { fg = hulog.yellow }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = hulog.fg0 }, -- any special symbol
		SpecialChar = { fg = hulog.yellow }, -- special character in a constant
		Tag = { fg = hulog.blue }, -- you can use CTRL-] on this
		Delimiter = { fg = hulog.fg2 }, -- character that needs attention like , or .
		SpecialComment = { fg = hulog.cyan }, -- special things inside a comment
		Debug = { fg = hulog.red }, -- debugging statements
		Underlined = { fg = hulog.green, bg = hulog.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = hulog.bg3_bright }, -- left blank, hidden
		Todo = { fg = hulog.yellow, bg = hulog.none, style = bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = hulog.none, bg = hulog.bg0 },
		htmlLink = { fg = hulog.green, style = "underline" },
		markdownH1Delimiter = { fg = hulog.orange },
		markdownH2Delimiter = { fg = hulog.yellow },
		markdownH3Delimiter = { fg = hulog.green },
		htmlH1 = { fg = hulog.orange, style = bold },
		htmlH2 = { fg = hulog.yellow, style = bold },
		htmlH3 = { fg = hulog.green, style = bold },
		htmlH4 = { fg = hulog.purple, style = bold },
		htmlH5 = { fg = hulog.blue, style = bold },
		markdownH1 = { fg = hulog.orange, style = bold },
		markdownH2 = { fg = hulog.yellow, style = bold },
		markdownH3 = { fg = hulog.green, style = bold },
		Error = { fg = hulog.red, bg = hulog.none, style = bold_underline }, -- any erroneous construct with bold
		Comment = { fg = hulog.fg2, style = italic }, -- italic comments
		Conditional = { fg = hulog.blue, style = italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = hulog.orange, style = italic }, -- italic function names
		Identifier = { fg = hulog.fg1, style = italic }, -- any variable name
		Keyword = { fg = hulog.blue, style = italic }, -- italic for, do, while, etc.
		Repeat = { fg = hulog.blue, style = italic }, -- italic any other keyword
		String = { fg = hulog.green, style = italic }, -- any string
	}
end

theme.loadEditor = function()
	-- 编辑器 UI 组
	local editor = {
		NormalFloat = { fg = hulog.fg1, bg = hulog.float }, -- normal text and background color
		FloatBorder = { fg = hulog.fg2, bg = hulog.float },
		ColorColumn = { fg = hulog.none, bg = hulog.bg1 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = hulog.bg3_bright }, -- placeholder characters substituted for concealed text
		Cursor = { fg = hulog.fg0, bg = hulog.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = hulog.fg1, bg = hulog.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = hulog.blue, bg = hulog.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = hulog.bg1 },
		ErrorMsg = { fg = hulog.red },
		Folded = { fg = hulog.fg3, bg = hulog.none, style = italic },
		FoldColumn = { fg = hulog.fg3 },
		IncSearch = { fg = hulog.bg0, bg = hulog.orange },
		LineNr = { fg = hulog.fg3 },
		CursorLineNr = { fg = hulog.fg0 },
		MatchParen = { fg = hulog.orange, bg = hulog.none, style = bold },
		ModeMsg = { fg = hulog.fg1 },
		MoreMsg = { fg = hulog.green },
		NonText = { fg = hulog.bg3_bright },
		Pmenu = { fg = hulog.fg1, bg = hulog.bg2 },
		PmenuSel = { fg = hulog.bg0, bg = hulog.blue },
		PmenuSbar = { fg = hulog.fg1, bg = hulog.bg2 },
		PmenuThumb = { fg = hulog.fg1, bg = hulog.fg3 },
		Question = { fg = hulog.green },
		QuickFixLine = { fg = hulog.blue, bg = hulog.none, style = "reverse" },
		qfLineNr = { fg = hulog.blue, bg = hulog.none, style = "reverse" },
		Search = { fg = hulog.bg0, bg = hulog.blue },
		Substitute = { fg = hulog.bg0, bg = hulog.yellow },
		SpecialKey = { fg = hulog.blue },
		SpellBad = { fg = hulog.red, bg = hulog.none, style = italic_undercurl },
		SpellCap = { fg = hulog.yellow, bg = hulog.none, style = italic_undercurl },
		SpellLocal = { fg = hulog.cyan, bg = hulog.none, style = italic_undercurl },
		SpellRare = { fg = hulog.orange, bg = hulog.none, style = italic_undercurl },
		StatusLine = { fg = hulog.fg1, bg = hulog.bg2 },
		StatusLineNC = { fg = hulog.fg2, bg = hulog.bg1 },
		StatusLineTerm = { fg = hulog.fg1, bg = hulog.bg2 },
		StatusLineTermNC = { fg = hulog.fg2, bg = hulog.bg1 },
		TabLineFill = { fg = hulog.fg2, bg = hulog.bg0 },
		TabLineSel = { fg = hulog.bg0, bg = hulog.blue },
		TabLine = { fg = hulog.fg2, bg = hulog.bg1 },
		Title = { fg = hulog.green, bg = hulog.none, style = bold },
		Visual = { fg = hulog.none, bg = hulog.bg2 },
		VisualNOS = { fg = hulog.none, bg = hulog.bg2 },
		WarningMsg = { fg = hulog.yellow },
		WildMenu = { fg = hulog.orange, bg = hulog.none, style = bold },
		CursorColumn = { fg = hulog.none, bg = hulog.cursorlinefg },
		CursorLine = { fg = hulog.none, bg = hulog.cursorlinefg },
		ToolbarLine = { fg = hulog.fg1, bg = hulog.bg1 },
		ToolbarButton = { fg = hulog.blue, bg = hulog.none, style = bold },
		NormalMode = { fg = hulog.blue, bg = hulog.none, style = "reverse" },
		InsertMode = { fg = hulog.green, bg = hulog.none, style = "reverse" },
		ReplaceMode = { fg = hulog.red, bg = hulog.none, style = "reverse" },
		VisualMode = { fg = hulog.orange, bg = hulog.none, style = "reverse" },
		CommandMode = { fg = hulog.yellow, bg = hulog.none, style = "reverse" },
		LspInlayHint = { fg = hulog.fg3, style = italic },

		healthError = { fg = hulog.red },
		healthSuccess = { fg = hulog.green },
		healthWarning = { fg = hulog.yellow },

		-- dashboard
		DashboardShortCut = { fg = hulog.orange },
		DashboardHeader = { fg = hulog.blue },
		DashboardCenter = { fg = hulog.blue_bright },
		DashboardFooter = { fg = hulog.green, style = italic },
	}

	-- 背景选项
	if vim.g.hulog_disable_background then
		editor.Normal = { fg = hulog.fg1, bg = hulog.none }
		editor.SignColumn = { fg = hulog.fg1, bg = hulog.none }
	else
		editor.Normal = { fg = hulog.fg1, bg = hulog.bg0 }
		editor.SignColumn = { fg = hulog.fg1, bg = hulog.bg0 }
	end

	-- 窗口分割线
	if vim.g.hulog_borders then
		editor.VertSplit = { fg = hulog.bg2 }
	else
		editor.VertSplit = { fg = hulog.bg0 }
	end

	-- diff 背景
	if vim.g.hulog_uniform_diff_background then
		editor.DiffAdd = { fg = hulog.green, bg = hulog.bg1 } -- diff mode: Added line
		editor.DiffChange = { fg = hulog.yellow, bg = hulog.bg1 } -- diff mode: Changed line
		editor.DiffDelete = { fg = hulog.red, bg = hulog.bg1 } -- diff mode: Deleted line
		editor.DiffText = { fg = hulog.purple, bg = hulog.bg1 } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = hulog.green, bg = hulog.none, style = "reverse" }
		editor.DiffChange = { fg = hulog.yellow, bg = hulog.none, style = "reverse" }
		editor.DiffDelete = { fg = hulog.red, bg = hulog.none, style = "reverse" }
		editor.DiffText = { fg = hulog.purple, bg = hulog.none, style = "reverse" }
	end

	return editor
end

theme.loadTerminal = function()
	-- 终端 ANSI 16 色（与 hulog konsole 配色一致）
	vim.g.terminal_color_0 = hulog.bg1
	vim.g.terminal_color_1 = hulog.red
	vim.g.terminal_color_2 = hulog.green
	vim.g.terminal_color_3 = hulog.yellow
	vim.g.terminal_color_4 = hulog.blue
	vim.g.terminal_color_5 = hulog.purple
	vim.g.terminal_color_6 = hulog.cyan
	vim.g.terminal_color_7 = hulog.fg0
	vim.g.terminal_color_8 = hulog.fg3
	vim.g.terminal_color_9 = hulog.orange
	vim.g.terminal_color_10 = hulog.green
	vim.g.terminal_color_11 = hulog.yellow
	vim.g.terminal_color_12 = hulog.blue_bright
	vim.g.terminal_color_13 = hulog.purple
	vim.g.terminal_color_14 = hulog.cyan
	vim.g.terminal_color_15 = hulog.fg0
end

theme.loadTreeSitter = function()
	-- TreeSitter 高亮（旧 TS* 名）
	local treesitter = {
		TSAnnotation = { fg = hulog.purple }, -- For C++/Dart attributes, annotations
		TSAttribute = { fg = hulog.purple },
		TSBoolean = { fg = hulog.blue_bright, style = bold },
		TSCharacter = { fg = hulog.green, style = italic },
		TSComment = { fg = hulog.fg2, style = italic },
		TSConditional = { fg = hulog.blue, style = italic },
		TSConstBuiltin = { fg = hulog.orange, style = bold },
		TSConstMacro = { fg = hulog.orange, style = bold },
		TSConstant = { fg = hulog.fg0 },
		TSConstructor = { fg = hulog.blue },
		TSEmphasis = { fg = hulog.blue, style = italic },
		TSError = { fg = hulog.red },
		TSException = { fg = hulog.yellow },
		TSField = { fg = hulog.fg1, style = italic },
		TSFloat = { fg = hulog.purple },
		TSFuncBuiltin = { fg = hulog.orange, style = italic },
		TSFuncMacro = { fg = hulog.orange, style = italic },
		TSFunction = { fg = hulog.orange, style = italic },
		TSInclude = { fg = hulog.blue },
		TSKeyword = { fg = hulog.blue, style = italic },
		TSKeywordFunction = { fg = hulog.blue, style = italic },
		TSKeywordOperator = { fg = hulog.blue, style = italic },
		TSKeywordReturn = { fg = hulog.blue, style = italic },
		TSLabel = { fg = hulog.yellow },
		TSLiteral = { fg = hulog.fg1 },
		TSMethod = { fg = hulog.orange, style = italic },
		TSNamespace = { fg = hulog.fg0, style = italic },
		TSNumber = { fg = hulog.purple },
		TSOperator = { fg = hulog.blue },
		TSParameter = { fg = hulog.fg1, style = italic },
		TSParameterReference = { fg = hulog.fg1, style = italic },
		TSProperty = { fg = hulog.blue, style = italic },
		TSPunctBracket = { fg = hulog.fg2 },
		TSPunctDelimiter = { fg = hulog.fg2 },
		TSPunctSpecial = { fg = hulog.fg2 },
		TSRepeat = { fg = hulog.blue, style = italic },
		TSString = { fg = hulog.green, style = italic },
		TSStringEscape = { fg = hulog.yellow, style = italic },
		TSStringRegex = { fg = hulog.cyan, style = italic },
		TSSymbol = { fg = hulog.purple },
		TSTag = { fg = hulog.blue },
		TSTagDelimiter = { fg = hulog.fg2 },
		TSText = { fg = hulog.fg1 },
		TSTextReference = { fg = hulog.purple, style = bold },
		TSTitle = { fg = hulog.orange, bg = hulog.none, style = bold },
		TSType = { fg = hulog.blue },
		TSTypeBuiltin = { fg = hulog.blue },
		TSUnderline = { fg = hulog.fg1, style = "underline" },
		TSURI = { fg = hulog.green, style = "underline" },
		TSVariable = { fg = hulog.fg1 },
		TSVariableBuiltin = { fg = hulog.fg0, style = bold },
	}

	-- 现代 @capture 名
	local captures = {
		["@annotation"] = { fg = hulog.purple },
		["@attribute"] = { fg = hulog.purple },
		["@boolean"] = { fg = hulog.blue_bright, style = bold },
		["@character"] = { fg = hulog.green, style = italic },
		["@character.special"] = { fg = hulog.yellow, style = italic },
		["@comment"] = { fg = hulog.fg2, style = italic },
		["@conditional"] = { fg = hulog.blue, style = italic },
		["@constant"] = { fg = hulog.fg0 },
		["@constant.builtin"] = { fg = hulog.orange, style = bold },
		["@constant.macro"] = { fg = hulog.orange, style = bold },
		["@constructor"] = { fg = hulog.blue },
		["@debug"] = { fg = hulog.red },
		["@define"] = { fg = hulog.yellow },
		["@error"] = { fg = hulog.red },
		["@exception"] = { fg = hulog.yellow },
		["@field"] = { fg = hulog.fg1, style = italic },
		["@float"] = { fg = hulog.purple },
		["@function"] = { fg = hulog.orange, style = italic },
		["@function.builtin"] = { fg = hulog.orange, style = italic },
		["@function.call"] = { fg = hulog.orange, style = italic },
		["@function.macro"] = { fg = hulog.orange, style = italic },
		["@function.method"] = { fg = hulog.orange, style = italic },
		["@function.method.call"] = { fg = hulog.orange, style = italic },
		["@include"] = { fg = hulog.blue },
		["@keyword"] = { fg = hulog.blue, style = italic },
		["@keyword.conditional"] = { fg = hulog.blue, style = italic },
		["@keyword.coroutine"] = { fg = hulog.blue, style = italic },
		["@keyword.debug"] = { fg = hulog.red },
		["@keyword.exception"] = { fg = hulog.yellow },
		["@keyword.function"] = { fg = hulog.blue, style = italic },
		["@keyword.import"] = { fg = hulog.blue, style = italic },
		["@keyword.operator"] = { fg = hulog.blue, style = italic },
		["@keyword.repeat"] = { fg = hulog.blue, style = italic },
		["@keyword.return"] = { fg = hulog.blue, style = italic },
		["@label"] = { fg = hulog.yellow },
		["@method"] = { fg = hulog.orange, style = italic },
		["@method.call"] = { fg = hulog.orange, style = italic },
		["@namespace"] = { fg = hulog.fg0, style = italic },
		["@none"] = { fg = hulog.fg1 },
		["@number"] = { fg = hulog.purple },
		["@number.float"] = { fg = hulog.purple },
		["@operator"] = { fg = hulog.blue },
		["@parameter"] = { fg = hulog.fg1, style = italic },
		["@parameter.reference"] = { fg = hulog.fg1, style = italic },
		["@preproc"] = { fg = hulog.yellow },
		["@property"] = { fg = hulog.blue, style = italic },
		["@punctuation.bracket"] = { fg = hulog.fg2 },
		["@punctuation.delimiter"] = { fg = hulog.fg2 },
		["@punctuation.special"] = { fg = hulog.fg2 },
		["@repeat"] = { fg = hulog.blue, style = italic },
		["@storageclass"] = { fg = hulog.blue },
		["@string"] = { fg = hulog.green, style = italic },
		["@string.documentation"] = { fg = hulog.green, style = italic },
		["@string.escape"] = { fg = hulog.yellow, style = italic },
		["@string.regex"] = { fg = hulog.cyan, style = italic },
		["@string.special"] = { fg = hulog.yellow, style = italic },
		["@string.symbol"] = { fg = hulog.purple },
		["@symbol"] = { fg = hulog.purple },
		["@tag"] = { fg = hulog.blue },
		["@tag.attribute"] = { fg = hulog.yellow },
		["@tag.delimiter"] = { fg = hulog.fg2 },
		["@text"] = { fg = hulog.fg1 },
		["@text.danger"] = { fg = hulog.red },
		["@text.diff.add"] = { fg = hulog.green },
		["@text.diff.delete"] = { fg = hulog.red },
		["@text.emphasis"] = { fg = hulog.blue, style = italic },
		["@text.environment"] = { fg = hulog.blue },
		["@text.environment.name"] = { fg = hulog.orange, style = bold },
		["@text.literal"] = { fg = hulog.fg1 },
		["@text.math"] = { fg = hulog.cyan },
		["@text.note"] = { fg = hulog.blue },
		["@text.reference"] = { fg = hulog.purple, style = bold },
		["@text.strike"] = { fg = hulog.fg1, style = "strikethrough" },
		["@text.strong"] = { fg = hulog.orange, style = bold },
		["@text.title"] = { fg = hulog.orange, style = bold },
		["@text.underline"] = { fg = hulog.fg1, style = "underline" },
		["@text.uri"] = { fg = hulog.green, style = "underline" },
		["@text.warning"] = { fg = hulog.yellow },
		["@type"] = { fg = hulog.blue },
		["@type.builtin"] = { fg = hulog.blue },
		["@type.definition"] = { fg = hulog.blue },
		["@type.qualifier"] = { fg = hulog.blue, style = italic },
		["@variable"] = { fg = hulog.fg1 },
		["@variable.builtin"] = { fg = hulog.fg0, style = bold },
		["@variable.global"] = { fg = hulog.fg1 },
		["@variable.member"] = { fg = hulog.fg1, style = italic },
		["@variable.parameter"] = { fg = hulog.fg1, style = italic },
	}

	return vim.tbl_extend("force", treesitter, captures)
end

theme.loadFiletypes = function()
	-- 文件类型专属组
	return {
		-- yaml
		yamlBlockMappingKey = { fg = hulog.orange },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = hulog.orange },
		yamlTSString = { fg = hulog.fg1 },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = hulog.orange }, -- stephpy/vim-yaml

		-- json
		jsonKeyword = { fg = hulog.blue },
		jsonBoolean = { link = "Boolean" },
		jsonNumber = { link = "Number" },
		jsonString = { link = "String" },
		jsonQuote = { fg = hulog.fg2 },
		jsonNoise = { fg = hulog.fg2 },

		-- markdown（非 treesitter 场景）
		markdownCode = { fg = hulog.rust },
		markdownCodeBlock = { fg = hulog.rust },
		markdownLinkText = { fg = hulog.blue },
		markdownUrl = { fg = hulog.green, style = "underline" },
		markdownItalic = { style = italic },
		markdownBold = { style = bold },

		-- diff 文件
		diffAdded = { fg = hulog.green },
		diffRemoved = { fg = hulog.red },
		diffChanged = { fg = hulog.yellow },
		diffOldFile = { fg = hulog.yellow },
		diffNewFile = { fg = hulog.orange },
		diffFile = { fg = hulog.blue },
		diffLine = { fg = hulog.fg3 },
		diffIndexLine = { fg = hulog.blue },

		-- help
		helpCommand = { fg = hulog.green },
		helpExample = { fg = hulog.orange },
		helpHyperTextEntry = { fg = hulog.blue },
		helpHyperTextJump = { fg = hulog.blue, style = "underline" },
	}
end

theme.loadLSP = function()
	-- LSP 诊断（旧 LspDiagnostics* + 新 Diagnostic* 链接）
	local lsp = {
		LspDiagnosticsDefaultError = { fg = hulog.red },
		LspDiagnosticsSignError = { fg = hulog.red },
		LspDiagnosticsFloatingError = { fg = hulog.red },
		LspDiagnosticsVirtualTextError = { fg = hulog.red },
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = hulog.red },
		LspDiagnosticsDefaultWarning = { fg = hulog.yellow },
		LspDiagnosticsSignWarning = { fg = hulog.yellow },
		LspDiagnosticsFloatingWarning = { fg = hulog.yellow },
		LspDiagnosticsVirtualTextWarning = { fg = hulog.yellow },
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = hulog.yellow },
		LspDiagnosticsDefaultInformation = { fg = hulog.blue },
		LspDiagnosticsSignInformation = { fg = hulog.blue },
		LspDiagnosticsFloatingInformation = { fg = hulog.blue },
		LspDiagnosticsVirtualTextInformation = { fg = hulog.blue },
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = hulog.blue },
		LspDiagnosticsDefaultHint = { fg = hulog.cyan },
		LspDiagnosticsSignHint = { fg = hulog.cyan },
		LspDiagnosticsFloatingHint = { fg = hulog.cyan },
		LspDiagnosticsVirtualTextHint = { fg = hulog.cyan },
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = hulog.cyan },
		LspReferenceText = { fg = hulog.fg1, bg = hulog.bg1 },
		LspReferenceRead = { fg = hulog.fg1, bg = hulog.bg1 },
		LspReferenceWrite = { fg = hulog.fg1, bg = hulog.bg1 },

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
		DiagnosticUnnecessary = { fg = hulog.fg3 },
		DiagnosticDeprecated = { fg = hulog.fg3, style = "strikethrough" },
		LspSignatureActiveParameter = { fg = hulog.orange, style = bold },
	}

	return lsp
end

theme.loadPlugins = function()
	-- 插件高亮
	local plugins = {

		-- GitSigns / GitGutter
		GitSignsAdd = { fg = hulog.green },
		GitSignsAddNr = { fg = hulog.green },
		GitSignsAddLn = { fg = hulog.green },
		GitSignsChange = { fg = hulog.yellow },
		GitSignsChangeNr = { fg = hulog.yellow },
		GitSignsChangeLn = { fg = hulog.yellow },
		GitSignsDelete = { fg = hulog.red },
		GitSignsDeleteNr = { fg = hulog.red },
		GitSignsDeleteLn = { fg = hulog.red },
		GitSignsCurrentLineBlame = { fg = hulog.fg3, style = bold },
		GitGutterAdd = { fg = hulog.green },
		GitGutterChange = { fg = hulog.yellow },
		GitGutterDelete = { fg = hulog.red },

		-- Telescope
		TelescopePromptBorder = { fg = hulog.fg2 },
		TelescopeResultsBorder = { fg = hulog.fg2 },
		TelescopePreviewBorder = { fg = hulog.fg2 },
		TelescopeSelectionCaret = { fg = hulog.orange },
		TelescopeSelection = { fg = hulog.bg0, bg = hulog.blue },
		TelescopeMatching = { link = "Search" },
		TelescopePromptPrefix = { fg = hulog.orange },
		TelescopePromptTitle = { fg = hulog.bg0, bg = hulog.orange },
		TelescopeResultsTitle = { fg = hulog.bg0, bg = hulog.blue },
		TelescopePreviewTitle = { fg = hulog.bg0, bg = hulog.green },

		-- NvimTree
		NvimTreeRootFolder = { fg = hulog.yellow },
		NvimTreeSymlink = { fg = hulog.blue_bright },
		NvimTreeFolderName = { fg = hulog.blue },
		NvimTreeFolderIcon = { fg = hulog.blue },
		NvimTreeEmptyFolderName = { fg = hulog.fg1 },
		NvimTreeOpenedFolderName = { fg = hulog.blue_bright },
		NvimTreeExecFile = { fg = hulog.fg1 },
		NvimTreeOpenedFile = { fg = hulog.fg0 },
		NvimTreeSpecialFile = { fg = hulog.blue, style = bold },
		NvimTreeImageFile = { fg = hulog.fg1 },
		NvimTreeMarkdownFile = { fg = hulog.fg1 },
		NvimTreeIndentMarker = { fg = hulog.fg3 },
		NvimTreeGitDirty = { fg = hulog.yellow },
		NvimTreeGitStaged = { fg = hulog.yellow },
		NvimTreeGitMerge = { fg = hulog.yellow },
		NvimTreeGitRenamed = { fg = hulog.yellow },
		NvimTreeGitNew = { fg = hulog.green },
		NvimTreeGitDeleted = { fg = hulog.red },
		NvimTreeGitIgnored = { fg = hulog.fg3 },

		-- WhichKey
		WhichKey = { fg = hulog.orange, style = bold },
		WhichKeyGroup = { fg = hulog.fg0 },
		WhichKeyDesc = { fg = hulog.cyan, style = italic },
		WhichKeySeperator = { fg = hulog.blue },
		WhichKeyFloating = { bg = hulog.bg1 },
		WhichKeyFloat = { bg = hulog.bg1 },
		WhichKeyValue = { fg = hulog.green },

		-- nvim-cmp
		CmpItemAbbr = { fg = hulog.fg1 },
		CmpItemAbbrMatch = { fg = hulog.blue, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = hulog.blue, style = bold },
		CmpItemMenu = { fg = hulog.fg3 },
		CmpItemKind = { fg = hulog.purple },
		CmpItemKindClass = { fg = hulog.blue },
		CmpItemKindColor = { fg = hulog.purple },
		CmpItemKindConstant = { fg = hulog.yellow },
		CmpItemKindConstructor = { fg = hulog.blue },
		CmpItemKindEnum = { fg = hulog.blue },
		CmpItemKindEnumMember = { fg = hulog.blue_bright },
		CmpItemKindEvent = { fg = hulog.blue },
		CmpItemKindField = { fg = hulog.fg1 },
		CmpItemKindFile = { fg = hulog.fg1 },
		CmpItemKindFolder = { fg = hulog.blue },
		CmpItemKindFunction = { fg = hulog.orange },
		CmpItemKindInterface = { fg = hulog.blue },
		CmpItemKindKeyword = { fg = hulog.blue },
		CmpItemKindMethod = { fg = hulog.orange },
		CmpItemKindModule = { fg = hulog.fg0 },
		CmpItemKindOperator = { fg = hulog.blue },
		CmpItemKindProperty = { fg = hulog.blue, style = italic },
		CmpItemKindReference = { fg = hulog.purple },
		CmpItemKindSnippet = { fg = hulog.cyan },
		CmpItemKindStruct = { fg = hulog.blue },
		CmpItemKindText = { fg = hulog.fg1 },
		CmpItemKindTypeParameter = { fg = hulog.blue_bright },
		CmpItemKindUnit = { fg = hulog.fg1 },
		CmpItemKindValue = { fg = hulog.purple },
		CmpItemKindVariable = { fg = hulog.fg1 },

		-- indent-blankline（新旧两代命名）
		IndentBlanklineChar = { fg = hulog.bg3 },
		IndentBlanklineContextChar = { fg = hulog.blue_bright },
		IblIndent = { fg = hulog.bg3 },
		IblScope = { fg = hulog.fg2 },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = hulog.fg3 },
		NotifyDEBUGIcon = { fg = hulog.fg3 },
		NotifyDEBUGTitle = { fg = hulog.fg3 },
		NotifyERRORBorder = { fg = hulog.red },
		NotifyERRORIcon = { fg = hulog.red },
		NotifyERRORTitle = { fg = hulog.red },
		NotifyINFOBorder = { fg = hulog.blue },
		NotifyINFOIcon = { fg = hulog.blue },
		NotifyINFOTitle = { fg = hulog.blue },
		NotifyTRACEBorder = { fg = hulog.purple },
		NotifyTRACEIcon = { fg = hulog.purple },
		NotifyTRACETitle = { fg = hulog.purple },
		NotifyWARNBorder = { fg = hulog.yellow },
		NotifyWARNIcon = { fg = hulog.yellow },
		NotifyWARNTitle = { fg = hulog.yellow },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },
		MiniCursorword = { bg = hulog.bg3 },
		MiniCursorwordCurrent = { bg = hulog.bg3 },
		MiniIndentscopeSymbol = { fg = hulog.blue_bright },
		MiniIndentscopePrefix = { style = "nocombine" },
		MiniJump = { fg = hulog.bg0, bg = hulog.blue },
		MiniJump2dSpot = { fg = hulog.orange, style = "bold,nocombine" },
		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = hulog.green, style = italic },
		MiniStarterHeader = { fg = hulog.blue },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = hulog.fg1 },
		MiniStarterItemPrefix = { fg = hulog.purple },
		MiniStarterSection = { fg = hulog.fg1 },
		MiniStarterQuery = { fg = hulog.blue_bright },
		MiniStatuslineDevinfo = { fg = hulog.fg1, bg = hulog.bg2 },
		MiniStatuslineFileinfo = { fg = hulog.fg1, bg = hulog.bg2 },
		MiniStatuslineFilename = { fg = hulog.fg1, bg = hulog.bg1 },
		MiniStatuslineInactive = { fg = hulog.fg1, bg = hulog.bg0, style = bold },
		MiniStatuslineModeCommand = { fg = hulog.bg0, bg = hulog.yellow, style = bold },
		MiniStatuslineModeInsert = { fg = hulog.bg0, bg = hulog.green, style = bold },
		MiniStatuslineModeNormal = { fg = hulog.bg0, bg = hulog.blue, style = bold },
		MiniStatuslineModeOther = { fg = hulog.bg0, bg = hulog.purple, style = bold },
		MiniStatuslineModeReplace = { fg = hulog.bg0, bg = hulog.red, style = bold },
		MiniStatuslineModeVisual = { fg = hulog.bg0, bg = hulog.orange, style = bold },
		MiniSurround = { link = "IncSearch" },
		MiniTablineCurrent = { bg = hulog.bg1 },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = hulog.bg0, fg = hulog.fg3 },
		MiniTablineModifiedCurrent = { bg = hulog.bg1, fg = hulog.yellow },
		MiniTablineModifiedHidden = { bg = hulog.bg0, fg = hulog.yellow },
		MiniTablineModifiedVisible = { bg = hulog.bg2, fg = hulog.yellow },
		MiniTablineTabpagesection = { fg = hulog.blue, bg = hulog.fg0, style = reverse_bold },
		MiniTablineVisible = { bg = hulog.bg2 },
		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = hulog.red, style = bold },
		MiniTestPass = { fg = hulog.green, style = bold },
		MiniTrailspace = { bg = hulog.red },

		-- headlines.nvim
		Headline1 = { fg = hulog.orange, bg = "#28211d", style = bold },
		Headline2 = { fg = hulog.yellow, bg = "#27211a", style = bold },
		Headline3 = { fg = hulog.green, bg = "#19241e", style = bold },
		Headline4 = { fg = hulog.blue, bg = "#21212b", style = bold },
		Headline5 = { fg = hulog.purple, bg = "#241f29", style = bold },
		Headline6 = { fg = hulog.blue_bright, bg = "#23232b", style = bold },
		Quote = { fg = hulog.fg2 },
		CodeBlock = { bg = hulog.bg1 },
		Dash = { fg = hulog.blue, style = bold },

		-- illuminate
		illuminatedWord = { bg = hulog.bg3 },
		illuminatedCurWord = { bg = hulog.bg3 },
		IlluminatedWordText = { bg = hulog.bg3 },
		IlluminatedWordRead = { bg = hulog.bg3 },
		IlluminatedWordWrite = { bg = hulog.bg3 },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = hulog.yellow },
		LeapLabelPrimary = { style = "nocombine", fg = hulog.bg0, bg = hulog.yellow },
		LeapLabelSecondary = { style = "nocombine", fg = hulog.bg0, bg = hulog.purple },

		-- hop.nvim
		HopNextKey = { fg = hulog.orange, style = bold },
		HopNextKey1 = { fg = hulog.cyan, style = bold },
		HopNextKey2 = { fg = hulog.fg1 },
		HopUnmatched = { fg = hulog.fg3 },

		-- flash.nvim
		FlashLabel = { fg = hulog.bg0, bg = hulog.yellow },
		FlashMatch = { fg = hulog.yellow, style = "underline,nocombine" },
		FlashCursor = { fg = hulog.bg0, bg = hulog.orange },
		FlashBackdrop = { fg = hulog.fg3 },

		-- vim-sneak
		Sneak = { fg = hulog.bg0, bg = hulog.blue },
		SneakScope = { bg = hulog.bg1 },

		-- rainbow-delimiters.nvim
		RainbowDelimiterRed = { fg = hulog.red },
		RainbowDelimiterYellow = { fg = hulog.yellow },
		RainbowDelimiterBlue = { fg = hulog.blue },
		RainbowDelimiterOrange = { fg = hulog.orange },
		RainbowDelimiterGreen = { fg = hulog.green },
		RainbowDelimiterCyan = { fg = hulog.cyan },
		RainbowDelimiterViolet = { fg = hulog.purple },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = hulog.purple },
		rainbowcol2 = { fg = hulog.yellow },
		rainbowcol3 = { fg = hulog.red },
		rainbowcol4 = { fg = hulog.cyan },
		rainbowcol5 = { fg = hulog.green },
		rainbowcol6 = { fg = hulog.blue_bright },
		rainbowcol7 = { fg = hulog.orange },

		-- aerial.nvim
		AerialLine = { bg = hulog.bg2 },
		AerialLineNC = { bg = hulog.bg2 },
		AerialArrayIcon = { fg = hulog.yellow },
		AerialBooleanIcon = { fg = hulog.blue_bright, style = bold },
		AerialClassIcon = { fg = hulog.blue },
		AerialConstantIcon = { fg = hulog.yellow },
		AerialConstructorIcon = { fg = hulog.blue },
		AerialEnumIcon = { fg = hulog.blue },
		AerialEnumMemberIcon = { fg = hulog.blue_bright },
		AerialEventIcon = { fg = hulog.blue },
		AerialFieldIcon = { fg = hulog.fg1 },
		AerialFileIcon = { fg = hulog.green },
		AerialFunctionIcon = { fg = hulog.orange },
		AerialInterfaceIcon = { fg = hulog.blue },
		AerialKeyIcon = { fg = hulog.blue },
		AerialMethodIcon = { fg = hulog.orange },
		AerialModuleIcon = { fg = hulog.fg0 },
		AerialNamespaceIcon = { fg = hulog.fg0 },
		AerialNullIcon = { fg = hulog.blue },
		AerialNumberIcon = { fg = hulog.purple },
		AerialObjectIcon = { fg = hulog.blue },
		AerialOperatorIcon = { fg = hulog.blue },
		AerialPackageIcon = { fg = hulog.fg0 },
		AerialPropertyIcon = { fg = hulog.blue, style = italic },
		AerialStringIcon = { fg = hulog.green },
		AerialStructIcon = { fg = hulog.blue },
		AerialTypeParameterIcon = { fg = hulog.blue_bright },
		AerialVariableIcon = { fg = hulog.fg1, style = bold },
		AerialArray = { fg = hulog.yellow },
		AerialBoolean = { fg = hulog.blue_bright, style = bold },
		AerialClass = { fg = hulog.blue },
		AerialConstant = { fg = hulog.yellow },
		AerialConstructor = { fg = hulog.blue },
		AerialEnum = { fg = hulog.blue },
		AerialEnumMember = { fg = hulog.blue_bright },
		AerialEvent = { fg = hulog.blue },
		AerialField = { fg = hulog.fg1 },
		AerialFile = { fg = hulog.green },
		AerialFunction = { fg = hulog.orange },
		AerialInterface = { fg = hulog.blue },
		AerialKey = { fg = hulog.blue },
		AerialMethod = { fg = hulog.orange },
		AerialModule = { fg = hulog.fg0 },
		AerialNamespace = { fg = hulog.fg0 },
		AerialNull = { fg = hulog.blue },
		AerialNumber = { fg = hulog.purple },
		AerialObject = { fg = hulog.blue },
		AerialOperator = { fg = hulog.blue },
		AerialPackage = { fg = hulog.fg0 },
		AerialProperty = { fg = hulog.blue, style = italic },
		AerialString = { fg = hulog.green },
		AerialStruct = { fg = hulog.blue },
		AerialTypeParameter = { fg = hulog.blue_bright },
		AerialVariable = { fg = hulog.fg1, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = hulog.yellow },
		NavicIconsBoolean = { fg = hulog.blue_bright, style = bold },
		NavicIconsClass = { fg = hulog.blue },
		NavicIconsConstant = { fg = hulog.yellow },
		NavicIconsConstructor = { fg = hulog.blue },
		NavicIconsEnum = { fg = hulog.blue },
		NavicIconsEnumMember = { fg = hulog.blue_bright },
		NavicIconsEvent = { fg = hulog.blue },
		NavicIconsField = { fg = hulog.fg1 },
		NavicIconsFile = { fg = hulog.green },
		NavicIconsFunction = { fg = hulog.orange },
		NavicIconsInterface = { fg = hulog.blue },
		NavicIconsKey = { fg = hulog.blue },
		NavicIconsMethod = { fg = hulog.orange },
		NavicIconsModule = { fg = hulog.fg0 },
		NavicIconsNamespace = { fg = hulog.fg0 },
		NavicIconsNull = { fg = hulog.blue },
		NavicIconsNumber = { fg = hulog.purple },
		NavicIconsObject = { fg = hulog.blue },
		NavicIconsOperator = { fg = hulog.blue },
		NavicIconsPackage = { fg = hulog.fg0 },
		NavicIconsProperty = { fg = hulog.blue, style = italic },
		NavicIconsString = { fg = hulog.green },
		NavicIconsStruct = { fg = hulog.blue },
		NavicIconsTypeParameter = { fg = hulog.blue_bright },
		NavicIconsVariable = { fg = hulog.fg1, style = bold },
		NavicText = { fg = hulog.fg1 },
		NavicSeparator = { fg = hulog.fg2 },

		-- nvim-dap
		DapBreakpoint = { fg = hulog.green },
		DapStopped = { fg = hulog.yellow },
		DapUIVariable = { fg = hulog.fg1 },
		DapUIScope = { fg = hulog.orange },
		DapUIType = { fg = hulog.blue },
		DapUIValue = { fg = hulog.fg1 },
		DapUIModifiedValue = { fg = hulog.orange },
		DapUIDecoration = { fg = hulog.orange },
		DapUIThread = { fg = hulog.blue },
		DapUIStoppedThread = { fg = hulog.blue_bright },
		DapUIFrameName = { fg = hulog.fg1 },
		DapUISource = { fg = hulog.blue },
		DapUILineNumber = { fg = hulog.orange },
		DapUIFloatBorder = { fg = hulog.orange },
		DapUIWatchesEmpty = { fg = hulog.red },
		DapUIWatchesValue = { fg = hulog.orange },
		DapUIWatchesError = { fg = hulog.red },
		DapUIBreakpointsPath = { fg = hulog.orange },
		DapUIBreakpointsInfo = { fg = hulog.orange },
		DapUIBreakpointsCurrentLine = { fg = hulog.orange },
		DapUIBreakpointsLine = { fg = hulog.orange },

		-- Neogit
		NeogitBranch = { fg = hulog.blue },
		NeogitRemote = { fg = hulog.cyan },
		NeogitHunkHeader = { fg = hulog.cyan },
		NeogitHunkHeaderHighlight = { fg = hulog.cyan, bg = hulog.bg1 },
		NeogitDiffContextHighlight = { bg = hulog.bg1 },
		NeogitDiffDeleteHighlight = { fg = hulog.red, style = "reverse" },
		NeogitDiffAddHighlight = { fg = hulog.green, style = "reverse" },

		-- lsp-trouble
		LspTroubleText = { fg = hulog.fg1 },
		LspTroubleCount = { fg = hulog.bg0, bg = hulog.blue },
		LspTroubleNormal = { fg = hulog.fg1, bg = hulog.sidebar },

		-- noice.nvim
		NoiceCmdlinePopup = { bg = hulog.bg1 },
		NoiceCmdlinePopupBorder = { fg = hulog.blue },
		NoiceCmdlineIcon = { fg = hulog.orange },
		NoiceFormatProgressDone = { fg = hulog.green },
		NoiceFormatProgressTodo = { fg = hulog.fg3 },
		NoicePopupmenu = { bg = hulog.bg1 },
		NoicePopupmenuBorder = { fg = hulog.fg2 },

		-- treesitter-context
		TreesitterContext = { bg = hulog.bg1 },
		TreesitterContextLineNumber = { fg = hulog.fg3 },

		-- copilot
		CopilotLabel = { fg = hulog.fg2, bg = hulog.none },

		-- 自定义状态栏组（供 lualine/staline 等引用）
		StatusLineDull = { fg = hulog.fg3, bg = hulog.bg1 },
		StatusLineAccent = { fg = hulog.bg0, bg = hulog.orange },
	}

	-- 侧栏背景选项
	if vim.g.hulog_disable_background then
		plugins.NvimTreeNormal = { fg = hulog.fg1, bg = hulog.none }
	elseif vim.g.hulog_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = hulog.fg1, bg = hulog.sidebar }
	else
		plugins.NvimTreeNormal = { fg = hulog.fg1, bg = hulog.none }
	end

	return plugins
end

return theme
