-- Vim code dark color scheme
-- Lua port of https://github.com/tomasiser/vim-code-dark

vim.g.colors_name = "vscode"

local highlight = function(group, fg, bg, attr, sp)
	fg = fg and " guifg=" .. fg or " guifg=NONE"
	bg = bg and " guibg=" .. bg  or " guibg=NONE"
	attr = attr and " gui=" .. attr or " gui=NONE"
	sp = sp and " guisp=" .. sp or ""
	vim.api.nvim_command("highlight " .. group .. fg .. bg .. attr .. sp)
end

local c = {}

-- General appearance colors
if vim.o.background == "dark" then
	c.vscNone = 'NONE'
	c.vscFront = '#D4D4D4'
	c.vscBack = '#1E1E1E'

	c.vscTabCurrent = '#1E1E1E'
	c.vscTabOther = '#2D2D2D'
	c.vscTabOutside = '#252526'

	c.vscLeftDark = '#252526'
	c.vscLeftMid = '#373737'
	c.vscLeftLight = '#3F3F46'

	c.vscPopupFront = '#BBBBBB'
	c.vscPopupBack = '#2D2D30'
	c.vscPopupHighlightBlue = '#073655'
	c.vscPopupHighlightGray = '#3D3D40'

	c.vscSplitLight = '#898989'
	c.vscSplitDark = '#444444'
	c.vscSplitThumb = '#424242'

	c.vscCursorDarkDark = '#222222'
	c.vscCursorDark = '#51504F'
	c.vscCursorLight = '#AEAFAD'
	c.vscSelection = '#264F78'
	c.vscLineNumber = '#5A5A5A'

	c.vscDiffRedDark = '#4B1818'
	c.vscDiffRedLight = '#6F1313'
	c.vscDiffRedLightLight = '#FB0101'
	c.vscDiffGreenDark = '#373D29'
	c.vscDiffGreenLight = '#4B5632'
	c.vscSearchCurrent = '#4B5632'
	c.vscSearch = '#264F78'

	-- Syntax colors
	c.vscGray = '#808080'
	c.vscViolet = '#646695'
	c.vscBlue = '#569CD6'
	c.vscDarkBlue = '#223E55'
	c.vscLightBlue = '#9CDCFE'
	c.vscGreen = '#6A9955'
	c.vscBlueGreen = '#4EC9B0'
	c.vscLightGreen = '#B5CEA8'
	c.vscRed = '#F44747'
	c.vscOrange = '#CE9178'
	c.vscLightRed = '#D16969'
	c.vscYellowOrange = '#D7BA7D'
	c.vscYellow = '#DCDCAA'
	c.vscPink = '#C586C0'
else
	c.vscNone = 'NONE'
	c.vscFront = '#343434'
	c.vscBack = '#FFFFFF'

	c.vscTabCurrent = '#FFFFFF'
	c.vscTabOther = '#CECECE'
	c.vscTabOutside = '#E8E8E8'

	c.vscLeftDark = '#F3F3F3'
	c.vscLeftMid = '#E5E5E5'
	c.vscLeftLight = '#F3F3F3'

	c.vscPopupFront = '#000000'
	c.vscPopupBack = '#F3F3F3'
	c.vscPopupHighlightBlue = '#D6EBFF'
	c.vscPopupHighlightGray = '#767676'

	c.vscSplitLight = '#EEEEEE'
	c.vscSplitDark = '#DDDDDD'
	c.vscSplitThumb = '#DFDFDF'

	c.vscCursorDarkDark = '#E5EBF1'
	c.vscCursorDark = '#6F6F6F'
	c.vscCursorLight = '#767676'
	c.vscSelection = '#ADD6FF'
	c.vscLineNumber = '#098658'

	c.vscDiffRedDark = '#800000'
	c.vscDiffRedLight = '#CD3131'
	c.vscDiffRedLightLight = '#FF0000'
	c.vscDiffGreenDark = '#168256'
	c.vscDiffGreenLight = '#008000'
	c.vscSearchCurrent = '#A8AC94'
	c.vscSearch = '#F8C9AB'

	-- Syntax colors
	c.vscGray = '#000000'
	c.vscViolet = '#001080'
	c.vscBlue = '#0000FF'
	c.vscDarkBlue = '#007ACC'
	c.vscLightBlue = '#0451A5'
	c.vscGreen = '#008000'
	c.vscBlueGreen = '#16825D'
	c.vscLightGreen = '#098658'
	c.vscRed = '#FF0000'
	c.vscOrange = '#C72E0F'
	c.vscLightRed = '#A31515'
	c.vscYellowOrange = '#811F3F'
	c.vscYellow = '#795E26'
	c.vscPink = '#AF00DB'
end

vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end

--- Vim editor colors
-- highlight(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
highlight('Normal', c.vscFront, c.vscBack, 'none', nil)
highlight('ColorColumn', nil, c.vscCursorDarkDark, 'none', nil)
highlight('Cursor', c.vscCursorDark, c.vscCursorLight, 'none', nil)
highlight('CursorLine', nil, c.vscCursorDarkDark, 'none', nil)
highlight('CursorColumn', nil, c.vscCursorDarkDark, 'none', nil)
highlight('Directory', c.vscBlue, c.vscBack, 'none', nil)
highlight('DiffAdd', nil, c.vscDiffGreenLight, 'none', nil)
highlight('DiffChange', nil, c.vscDiffRedDark, 'none', nil)
highlight('DiffDelete', nil, c.vscDiffRedLight, 'none', nil)
highlight('DiffText', nil, c.vscDiffRedLight, 'none', nil)
highlight('EndOfBuffer', c.vscBack, nil, 'none', nil)
highlight('ErrorMsg', c.vscRed, c.vscBack, 'none', nil)
highlight('VertSplit', c.vscSplitDark, c.vscBack, 'none', nil)
highlight('Folded', c.vscLeftLight, c.vscLeftDark, 'underline', nil)
highlight('FoldColumn', c.vscLineNumber, c.vscBack, 'none', nil)
highlight('SignColumn', nil, c.vscBack, 'none', nil)
highlight('IncSearch', c.vscNone, c.vscSearchCurrent, 'none', nil)
highlight('LineNr', c.vscLineNumber, c.vscBack, 'none', nil)
highlight('CursorLineNr', c.vscPopupFront, c.vscBack, 'none', nil)
highlight('MatchParen', c.vscNone, c.vscCursorDark, 'none', nil)
highlight('ModeMsg', c.vscFront, c.vscLeftDark, 'none', nil)
highlight('MoreMsg', c.vscFront, c.vscLeftDark, 'none', nil)
highlight('NonText', c.vscLineNumber, c.vscBack, 'none', nil)
highlight('Pmenu', c.vscPopupFront, c.vscPopupBack, 'none', nil)
highlight('PmenuSel', c.vscPopupFront, c.vscPopupHighlightBlue, 'none', nil)
highlight('PmenuSbar', nil, c.vscPopupHighlightGray, 'none', nil)
highlight('PmenuThumb', nil, c.vscPopupFront, 'none', nil)
highlight('Question', c.vscBlue, c.vscBack, 'none', nil)
highlight('Search', c.vscNone, c.vscSearch, 'none', nil)
highlight('SpecialKey', c.vscBlue, c.vscNone, 'none', nil)
highlight('StatusLine', c.vscFront, c.vscLeftMid, 'none', nil)
highlight('StatusLineNC', c.vscFront, c.vscLeftDark, 'none', nil)
highlight('TabLine', c.vscFront, c.vscTabOther, 'none', nil)
highlight('TabLineFill', c.vscFront, c.vscTabOutside, 'none', nil)
highlight('TabLineSel', c.vscFront, c.vscTabCurrent, 'none', nil)
highlight('Title', c.vscNone, c.vscNone, 'bold', nil)
highlight('Visual', c.vscNone, c.vscSelection, 'none', nil)
highlight('VisualNOS', c.vscNone, c.vscSelection, 'none', nil)
highlight('WarningMsg', c.vscOrange, c.vscBack, 'none', nil)
highlight('WildMenu', c.vscNone, c.vscSelection, 'none', nil)

-- Legacy groups for official git.vim and diff.vim syntax
vim.api.nvim_command("hi! link diffAdded DiffAdd")
vim.api.nvim_command("hi! link diffChanged DiffChange")
vim.api.nvim_command("hi! link diffRemoved DiffDelete")

highlight('Comment', c.vscGreen, nil, 'none', nil)

highlight('Constant', c.vscBlue, nil, 'none', nil)
highlight('String', c.vscOrange, nil, 'none', nil)
highlight('Character', c.vscOrange, nil, 'none', nil)
highlight('Number', c.vscLightGreen, nil, 'none', nil)
highlight('Boolean', c.vscBlue, nil, 'none', nil)
highlight('Float', c.vscLightGreen, nil, 'none', nil)

highlight('Identifier', c.vscLightBlue, nil, 'none', nil)
highlight('Function', c.vscYellow, nil, 'none', nil)

highlight('Statement', c.vscPink, nil, 'none', nil)
highlight('Conditional', c.vscPink, nil, 'none', nil)
highlight('Repeat', c.vscPink, nil, 'none', nil)
highlight('Label', c.vscPink, nil, 'none', nil)
highlight('Operator', c.vscFront, nil, 'none', nil)
highlight('Keyword', c.vscPink, nil, 'none', nil)
highlight('Exception', c.vscPink, nil, 'none', nil)

highlight('PreProc', c.vscPink, nil, 'none', nil)
highlight('Include', c.vscPink, nil, 'none', nil)
highlight('Define', c.vscPink, nil, 'none', nil)
highlight('Macro', c.vscPink, nil, 'none', nil)
highlight('PreCondit', c.vscPink, nil, 'none', nil)

highlight('Type', c.vscBlue, nil, 'none', nil)
highlight('StorageClass', c.vscBlue, nil, 'none', nil)
highlight('Structure', c.vscBlue, nil, 'none', nil)
highlight('Typedef', c.vscBlue, nil, 'none', nil)

highlight('Special', c.vscYellowOrange, nil, 'none', nil)
highlight('SpecialChar', c.vscFront, nil, 'none', nil)
highlight('Tag', c.vscFront, nil, 'none', nil)
highlight('Delimiter', c.vscFront, nil, 'none', nil)
highlight('SpecialComment', c.vscGreen, nil, 'none', nil)
highlight('Debug', c.vscFront, nil, 'none', nil)

highlight('Underlined', c.vscNone, nil, 'underline', nil)
highlight("Conceal", c.vscFront, c.vscBack, 'none', nil)

highlight('Ignore', c.vscFront, nil, 'none', nil)

highlight('Error', c.vscRed, c.vscBack, 'undercurl', c.vscRed)

highlight('Todo', c.vscBack, c.vscPink, 'bold', nil)
highlight('SpellBad', c.vscRed, c.vscBack, 'undercurl', c.vscRed)
highlight('SpellCap', c.vscRed, c.vscBack, 'undercurl', c.vscRed)
highlight('SpellRare', c.vscRed, c.vscBack, 'undercurl', c.vscRed)
highlight('SpellLocal', c.vscRed, c.vscBack, 'undercurl', c.vscRed)

-- Neovim Treesitter
highlight('TSError', c.vscRed, nil, 'none', nil)
highlight('TSPunctDelimiter', c.vscFront, nil, 'none', nil)
highlight('TSPunctBracket', c.vscFront, nil, 'none', nil)
highlight('TSPunctSpecial', c.vscFront, nil, 'none', nil)
highlight('TSConstant', c.vscYellow, nil, 'none', nil)
highlight('TSConstBuiltin', c.vscBlue, nil, 'none', nil)
highlight('TSConstMacro', c.vscBlueGreen, nil, 'none', nil)
highlight('TSStringRegex', c.vscOrange, nil, 'none', nil)
highlight('TSString', c.vscOrange, nil, 'none', nil)
highlight('TSStringEscape', c.vscYellowOrange, nil, 'none', nil)
highlight('TSCharacter', c.vscOrange, nil, 'none', nil)
highlight('TSNumber', c.vscLightGreen, nil, 'none', nil)
highlight('TSBoolean', c.vscBlue, nil, 'none', nil)
highlight('TSFloat', c.vscLightGreen, nil, 'none', nil)
highlight('TSAnnotation', c.vscYellow, nil, 'none', nil)
highlight('TSAttribute', c.vscBlueGreen, nil, 'none', nil)
highlight('TSNamespace', c.vscBlueGreen, nil, 'none', nil)
highlight('TSFuncBuiltin', c.vscYellow, nil, 'none', nil)
highlight('TSFunction', c.vscYellow, nil, 'none', nil)
highlight('TSFuncMacro', c.vscYellow, nil, 'none', nil)
highlight('TSParameter', c.vscLightBlue, nil, 'none', nil)
highlight('TSParameterReference', c.vscLightBlue, nil, 'none', nil)
highlight('TSMethod', c.vscYellow, nil, 'none', nil)
highlight('TSField', c.vscLightBlue, nil, 'none', nil)
highlight('TSProperty', c.vscLightBlue, nil, 'none', nil)
highlight('TSConstructor', c.vscBlueGreen, nil, 'none', nil)
highlight('TSConditional', c.vscPink, nil, 'none', nil)
highlight('TSRepeat', c.vscPink, nil, 'none', nil)
highlight('TSLabel', c.vscLightBlue, nil, 'none', nil)
highlight('TSKeyword', c.vscBlue, nil, 'none', nil)
highlight('TSKeywordFunction', c.vscPink, nil, 'none', nil)
highlight('TSKeywordOperator', c.vscBlue, nil, 'none', nil)
highlight('TSOperator', c.vscFront, nil, 'none', nil)
highlight('TSException', c.vscPink, nil, 'none', nil)
highlight('TSType', c.vscBlueGreen, nil, 'none', nil)
highlight('TSTypeBuiltin', c.vscBlue, nil, 'none', nil)
highlight('TSStructure', c.vscLightBlue, nil, 'none', nil)
highlight('TSInclude', c.vscPink, nil, 'none', nil)
highlight('TSVariable', c.vscLightBlue, nil, 'none', nil)
highlight('TSVariableBuiltin', c.vscLightBlue, nil, 'none', nil)
highlight('TSText', c.vscYellowOrange, nil, 'none', nil)
highlight('TSStrong', c.vscYellowOrange, nil, 'none', nil)
highlight('TSEmphasis', c.vscYellowOrange, nil, 'none', nil)
highlight('TSUnderline', c.vscYellowOrange, nil, 'none', nil)
highlight('TSTitle', c.vscYellowOrange, nil, 'none', nil)
highlight('TSLiteral', c.vscYellowOrange, nil, 'none', nil)
highlight('TSURI', c.vscYellowOrange, nil, 'none', nil)
highlight('TSTag', c.vscBlue, nil, 'none', nil)
highlight('TSTagDelimiter', c.vscGray, nil, 'none', nil)

-- Markdown
highlight('markdownBold', c.vscBlue, nil, 'bold', nil)
highlight('markdownCode', c.vscOrange, nil, 'none', nil)
highlight('markdownRule', c.vscBlue, nil, 'bold', nil)
highlight('markdownCodeDelimiter', c.vscOrange, nil, 'none', nil)
highlight('markdownHeadingDelimiter', c.vscBlue, nil, 'none', nil)
highlight('markdownFootnote', c.vscOrange, nil, 'none', nil)
highlight('markdownFootnoteDefinition', c.vscOrange, nil, 'none', nil)
highlight('markdownUrl', c.vscLightBlue, nil, 'underline', nil)
highlight('markdownLinkText', c.vscOrange, nil, 'none', nil)
highlight('markdownEscape', c.vscYellowOrange, nil, 'none', nil)

-- JSON
highlight('jsonKeyword', c.vscLightBlue, nil, 'none', nil)
highlight('jsonEscape', c.vscYellowOrange, nil, 'none', nil)
highlight('jsonNull', c.vscBlue, nil, 'none', nil)
highlight('jsonBoolean', c.vscBlue, nil, 'none', nil)

-- HTML
highlight('htmlTag', c.vscGray, nil, 'none', nil)
highlight('htmlEndTag', c.vscGray, nil, 'none', nil)
highlight('htmlTagName', c.vscBlue, nil, 'none', nil)
highlight('htmlSpecialTagName', c.vscBlue, nil, 'none', nil)
highlight('htmlArg', c.vscLightBlue, nil, 'none', nil)

-- PHP
highlight('phpStaticClasses', c.vscBlueGreen, nil, 'none', nil)
highlight('phpMethod', c.vscYellow, nil, 'none', nil)
highlight('phpClass', c.vscBlueGreen, nil, 'none', nil)
highlight('phpFunction', c.vscYellow, nil, 'none', nil)
highlight('phpInclude', c.vscBlue, nil, 'none', nil)
highlight('phpUseClass', c.vscBlueGreen, nil, 'none', nil)
highlight('phpRegion', c.vscBlueGreen, nil, 'none', nil)
highlight('phpMethodsVar', c.vscLightBlue, nil, 'none', nil)

-- CSS
highlight('cssBraces', c.vscFront, nil, 'none', nil)
highlight('cssInclude', c.vscPink, nil, 'none', nil)
highlight('cssTagName', c.vscYellowOrange, nil, 'none', nil)
highlight('cssClassName', c.vscYellowOrange, nil, 'none', nil)
highlight('cssPseudoClass', c.vscYellowOrange, nil, 'none', nil)
highlight('cssPseudoClassId', c.vscYellowOrange, nil, 'none', nil)
highlight('cssPseudoClassLang', c.vscYellowOrange, nil, 'none', nil)
highlight('cssIdentifier', c.vscYellowOrange, nil, 'none', nil)
highlight('cssProp', c.vscLightBlue, nil, 'none', nil)
highlight('cssDefinition', c.vscLightBlue, nil, 'none', nil)
highlight('cssAttr', c.vscOrange, nil, 'none', nil)
highlight('cssAttrRegion', c.vscOrange, nil, 'none', nil)
highlight('cssColor', c.vscOrange, nil, 'none', nil)
highlight('cssFunction', c.vscOrange, nil, 'none', nil)
highlight('cssFunctionName', c.vscOrange, nil, 'none', nil)
highlight('cssVendor', c.vscOrange, nil, 'none', nil)
highlight('cssValueNumber', c.vscOrange, nil, 'none', nil)
highlight('cssValueLength', c.vscOrange, nil, 'none', nil)
highlight('cssUnitDecorators', c.vscOrange, nil, 'none', nil)
highlight('cssStyle', c.vscLightBlue, nil, 'none', nil)
highlight('cssImportant', c.vscBlue, nil, 'none', nil)

-- JavaScript
highlight('jsVariableDef', c.vscLightBlue, nil, 'none', nil)
highlight('jsFuncArgs', c.vscLightBlue, nil, 'none', nil)
highlight('jsFuncBlock', c.vscLightBlue, nil, 'none', nil)
highlight('jsRegexpString', c.vscLightRed, nil, 'none', nil)
highlight('jsThis', c.vscBlue, nil, 'none', nil)
highlight('jsOperatorKeyword', c.vscBlue, nil, 'none', nil)
highlight('jsDestructuringBlock', c.vscLightBlue, nil, 'none', nil)
highlight('jsObjectKey', c.vscLightBlue, nil, 'none', nil)
highlight('jsGlobalObjects', c.vscBlueGreen, nil, 'none', nil)
highlight('jsModuleKeyword', c.vscLightBlue, nil, 'none', nil)
highlight('jsClassDefinition', c.vscBlueGreen, nil, 'none', nil)
highlight('jsClassKeyword', c.vscBlue, nil, 'none', nil)
highlight('jsExtendsKeyword', c.vscBlue, nil, 'none', nil)
highlight('jsExportDefault', c.vscPink, nil, 'none', nil)
highlight('jsFuncCall', c.vscYellow, nil, 'none', nil)
highlight('jsObjectValue', c.vscLightBlue, nil, 'none', nil)
highlight('jsParen', c.vscLightBlue, nil, 'none', nil)
highlight('jsObjectProp', c.vscLightBlue, nil, 'none', nil)
highlight('jsIfElseBlock', c.vscLightBlue, nil, 'none', nil)
highlight('jsParenIfElse', c.vscLightBlue, nil, 'none', nil)
highlight('jsSpreadOperator', c.vscLightBlue, nil, 'none', nil)
highlight('jsSpreadExpression', c.vscLightBlue, nil, 'none', nil)

-- Typescript
highlight('typescriptLabel', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptExceptions', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptBraces', c.vscFront, nil, 'none', nil)
highlight('typescriptEndColons', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptParens', c.vscFront, nil, 'none', nil)
highlight('typescriptDocTags', c.vscBlue, nil, 'none', nil)
highlight('typescriptDocComment', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptLogicSymbols', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptImport', c.vscPink, nil, 'none', nil)
highlight('typescriptBOM', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptVariableDeclaration', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptVariable', c.vscBlue, nil, 'none', nil)
highlight('typescriptExport', c.vscPink, nil, 'none', nil)
highlight('typescriptAliasDeclaration', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptAliasKeyword', c.vscBlue, nil, 'none', nil)
highlight('typescriptClassName', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptAccessibilityModifier', c.vscBlue, nil, 'none', nil)
highlight('typescriptOperator', c.vscBlue, nil, 'none', nil)
highlight('typescriptArrowFunc', c.vscBlue, nil, 'none', nil)
highlight('typescriptMethodAccessor', c.vscBlue, nil, 'none', nil)
highlight('typescriptMember', c.vscYellow, nil, 'none', nil)
highlight('typescriptTypeReference', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptDefault', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptTemplateSB', c.vscYellowOrange, nil, 'none', nil)
highlight('typescriptArrowFuncArg', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptParamImpl', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptFuncComma', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptCastKeyword', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptCall', c.vscBlue, nil, 'none', nil)
highlight('typescriptCase', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptReserved', c.vscPink, nil, 'none', nil)
highlight('typescriptDefault', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptDecorator', c.vscYellow, nil, 'none', nil)
highlight('typescriptPredefinedType', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptClassHeritage', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptClassExtends', c.vscBlue, nil, 'none', nil)
highlight('typescriptClassKeyword', c.vscBlue, nil, 'none', nil)
highlight('typescriptBlock', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptDOMDocProp', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptTemplateSubstitution', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptClassBlock', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptFuncCallArg', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptIndexExpr', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptConditionalParen', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptArray', c.vscYellow, nil, 'none', nil)
highlight('typescriptES6SetProp', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptObjectLiteral', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptTypeParameter', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptEnumKeyword', c.vscBlue, nil, 'none', nil)
highlight('typescriptEnum', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptLoopParen', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptParenExp', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptModule', c.vscLightBlue, nil, 'none', nil)
highlight('typescriptAmbientDeclaration', c.vscBlue, nil, 'none', nil)
highlight('typescriptModule', c.vscBlue, nil, 'none', nil)
highlight('typescriptFuncTypeArrow', c.vscBlue, nil, 'none', nil)
highlight('typescriptInterfaceHeritage', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptInterfaceName', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptInterfaceKeyword', c.vscBlue, nil, 'none', nil)
highlight('typescriptInterfaceExtends', c.vscBlue, nil, 'none', nil)
highlight('typescriptGlobal', c.vscBlueGreen, nil, 'none', nil)
highlight('typescriptAsyncFuncKeyword', c.vscBlue, nil, 'none', nil)
highlight('typescriptFuncKeyword', c.vscBlue, nil, 'none', nil)
highlight('typescriptGlobalMethod', c.vscYellow, nil, 'none', nil)
highlight('typescriptPromiseMethod', c.vscYellow, nil, 'none', nil)

-- XML
highlight('xmlTag', c.vscBlueGreen, nil, 'none', nil)
highlight('xmlTagName', c.vscBlueGreen, nil, 'none', nil)
highlight('xmlEndTag', c.vscBlueGreen, nil, 'none', nil)

-- Ruby
highlight('rubyClassNameTag', c.vscBlueGreen, nil, 'none', nil)
highlight('rubyClassName', c.vscBlueGreen, nil, 'none', nil)
highlight('rubyModuleName', c.vscBlueGreen, nil, 'none', nil)
highlight('rubyConstant', c.vscBlueGreen, nil, 'none', nil)

-- Golang
highlight('goPackage', c.vscBlue, nil, 'none', nil)
highlight('goImport', c.vscBlue, nil, 'none', nil)
highlight('goVar', c.vscBlue, nil, 'none', nil)
highlight('goConst', c.vscBlue, nil, 'none', nil)
highlight('goStatement', c.vscPink, nil, 'none', nil)
highlight('goType', c.vscBlueGreen, nil, 'none', nil)
highlight('goSignedInts', c.vscBlueGreen, nil, 'none', nil)
highlight('goUnsignedInts', c.vscBlueGreen, nil, 'none', nil)
highlight('goFloats', c.vscBlueGreen, nil, 'none', nil)
highlight('goComplexes', c.vscBlueGreen, nil, 'none', nil)
highlight('goBuiltins', c.vscYellow, nil, 'none', nil)
highlight('goBoolean', c.vscBlue, nil, 'none', nil)
highlight('goPredefinedIdentifiers', c.vscBlue, nil, 'none', nil)
highlight('goTodo', c.vscGreen, nil, 'none', nil)
highlight('goDeclaration', c.vscBlue, nil, 'none', nil)
highlight('goDeclType', c.vscBlue, nil, 'none', nil)
highlight('goTypeDecl', c.vscBlue, nil, 'none', nil)
highlight('goTypeName', c.vscBlueGreen, nil, 'none', nil)
highlight('goVarAssign', c.vscLightBlue, nil, 'none', nil)
highlight('goVarDefs', c.vscLightBlue, nil, 'none', nil)
highlight('goReceiver', c.vscFront, nil, 'none', nil)
highlight('goReceiverType', c.vscFront, nil, 'none', nil)
highlight('goFunctionCall', c.vscYellow, nil, 'none', nil)
highlight('goMethodCall', c.vscYellow, nil, 'none', nil)
highlight('goSingleDecl', c.vscLightBlue, nil, 'none', nil)

-- Python
highlight('pythonStatement', c.vscBlue, nil, 'none', nil)
highlight('pythonOperator', c.vscBlue, nil, 'none', nil)
highlight('pythonException', c.vscPink, nil, 'none', nil)
highlight('pythonExClass', c.vscBlueGreen, nil, 'none', nil)
highlight('pythonBuiltinObj', c.vscLightBlue, nil, 'none', nil)
highlight('pythonBuiltinType', c.vscBlueGreen, nil, 'none', nil)
highlight('pythonBoolean', c.vscBlue, nil, 'none', nil)
highlight('pythonNone', c.vscBlue, nil, 'none', nil)
highlight('pythonTodo', c.vscBlue, nil, 'none', nil)
highlight('pythonClassVar', c.vscBlue, nil, 'none', nil)
highlight('pythonClassDef', c.vscBlueGreen, nil, 'none', nil)

-- TeX
highlight('texStatement', c.vscBlue, nil, 'none', nil)
highlight('texBeginEnd', c.vscYellow, nil, 'none', nil)
highlight('texBeginEndName', c.vscLightBlue, nil, 'none', nil)
highlight('texOption', c.vscLightBlue, nil, 'none', nil)
highlight('texBeginEndModifier', c.vscLightBlue, nil, 'none', nil)
highlight('texDocType', c.vscPink, nil, 'none', nil)
highlight('texDocTypeArgs', c.vscLightBlue, nil, 'none', nil)

-- Git
highlight('gitcommitHeader', c.vscGray, nil, 'none', nil)
highlight('gitcommitOnBranch', c.vscGray, nil, 'none', nil)
highlight('gitcommitBranch', c.vscPink, nil, 'none', nil)
highlight('gitcommitComment', c.vscGray, nil, 'none', nil)
highlight('gitcommitSelectedType', c.vscGreen, nil, 'none', nil)
highlight('gitcommitSelectedFile', c.vscGreen, nil, 'none', nil)
highlight('gitcommitDiscardedType', c.vscRed, nil, 'none', nil)
highlight('gitcommitDiscardedFile', c.vscRed, nil, 'none', nil)
highlight('gitcommitOverflow', c.vscRed, nil, 'none', nil)
highlight('gitcommitSummary', c.vscPink, nil, 'none', nil)
highlight('gitcommitBlank', c.vscPink, nil, 'none', nil)

-- Lua
highlight('luaFuncCall', c.vscYellow, nil, 'none', nil)
highlight('luaFuncArgName', c.vscLightBlue, nil, 'none', nil)
highlight('luaFuncKeyword', c.vscPink, nil, 'none', nil)
highlight('luaLocal', c.vscPink, nil, 'none', nil)
highlight('luaBuiltIn', c.vscBlue, nil, 'none', nil)

-- SH
highlight('shDeref', c.vscLightBlue, nil, 'none', nil)
highlight('shVariable', c.vscLightBlue, nil, 'none', nil)

-- SQL
highlight('sqlKeyword', c.vscPink, nil, 'none', nil)
highlight('sqlFunction', c.vscYellowOrange, nil, 'none', nil)
highlight('sqlOperator', c.vscPink, nil, 'none', nil)

-- YAML
highlight('yamlKey', c.vscBlue, nil, 'none', nil)
highlight('yamlConstant', c.vscBlue, nil, 'none', nil)

-- Gitgutter
highlight('GitGutterAdd', c.vscGreen, nil, 'none', nil)
highlight('GitGutterChange', c.vscYellow, nil, 'none', nil)
highlight('GitGutterDelete', c.vscRed, nil, 'none', nil)

-- Git Signs
highlight('GitSignsAdd', c.vscGreen, nil, 'none', nil)
highlight('GitSignsChange', c.vscYellow, nil, 'none', nil)
highlight('GitSignsDelete', c.vscRed, nil, 'none', nil)
highlight('GitSignsAddLn', c.vscBack, c.vscGreen, 'none', nil)
highlight('GitSignsChangeLn', c.vscBack, c.vscYellow, 'none', nil)
highlight('GitSignsDeleteLn', c.vscBack, c.vscRed, 'none', nil)

-- Nvim compe
vim.api.nvim_command("highlight! link CompeDocumentation Pmenu")

-- Telescope
highlight("TelescopePromptBorder", c.vscBlue, nil, 'none', nil)
highlight("TelescopeResultsBorder", c.vscBlue, nil, 'none', nil)
highlight("TelescopePreviewBorder", c.vscPink, nil, 'none', nil)

-- NvimTree
highlight("NvimTreeRootFolder", c.vscFront, nil, 'bold', nil)
highlight("NvimTreeGitDirty", c.vscYellow, nil, 'none', nil)
highlight("NvimTreeGitNew", c.vscGreen, nil, 'none', nil)
highlight("NvimTreeImageFile", c.vscViolet, nil, 'none', nil)
if vim.o.background == "dark" then
	highlight("NvimTreeFolderIcon", c.vscBlue, nil, 'none', nil)
else
	highlight("NvimTreeFolderIcon", c.vscDarkBlue, nil, 'none', nil)
end
highlight("NvimTreeIndentMarker", c.vscLineNumber, nil, 'none', nil)
highlight("NvimTreeEmptyFolderName", c.vscGray, nil, 'none', nil)
highlight("NvimTreeFolderName", c.vscFront, nil, 'none', nil)
highlight("NvimTreeSpecialFile", c.vscPink, nil, 'underline', nil)
highlight("NvimTreeNormal ", c.vscFront, c.vscLeftDark, 'none', nil)
highlight("NvimTreeCursorLine", nil, c.vscLeftMid, 'none', nil)
highlight("NvimTreeVertSplit", c.vscBack, c.vscBack, 'none', nil)
highlight("NvimTreeEndOfBuffer", c.vscLeftDark, nil, 'none', nil)
highlight("NvimTreeOpenedFolderName", nil, c.vscLeftDark, 'none', nil)

-- Bufferline
highlight("BufferLineIndicatorSelected", c.vscLeftDark , nil, 'none', nil)
highlight("BufferLineFill", nil , c.vscLeftDark, 'none', nil)

-- IndentBlankLine
highlight("IndentBlanklineContextChar", c.vscYellow, nil, "nocombine", nil)
if vim.o.background == "dark" then
	highlight("IndentBlanklineChar", c.vscLineNumber, nil, "nocombine", nil)
	highlight("IndentBlanklineSpaceChar", c.vscLineNumber, nil, "nocombine", nil)
else
	highlight("IndentBlanklineChar", c.vscTabOther, nil, "nocombine", nil)
	highlight("IndentBlanklineSpaceChar", c.vscTabOther, nil, "nocombine", nil)
end

-- LSP
highlight('LspDiagnosticsDefaultError', c.vscRed, nil, 'none', nil)
highlight('LspDiagnosticsDefaultWarning', c.vscYellow, nil, 'none', nil)
highlight('LspDiagnosticsDefaultInformation', c.vscBlue, nil, 'none', nil)
highlight('LspDiagnosticsDefaultHint', c.vscBlue, nil, 'none', nil)
highlight('LspDiagnosticsUnderlineError', c.vscRed, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineWarning', c.vscYellow, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineInformation', c.vscBlue, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineHint', c.vscBlue, nil, 'undercurl', nil)
highlight('LspReferenceText', c.vscYellowOrange, nil, 'none', nil)
highlight('LspReferenceRead', c.vscYellowOrange, nil, 'none', nil)
highlight('LspReferenceWrite', c.vscYellowOrange, nil, 'none', nil)
