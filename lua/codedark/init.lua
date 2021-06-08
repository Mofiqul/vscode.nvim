-- Vim code dark color scheme
-- Lua port of https://github.com/tomasiser/vim-code-dark

vim.api.nvim_command("set background=dark")
vim.g.colors_name = "codedark"

local highlight = function(group, fg, bg, attr, sp)
	local ctermfg = function ()
		if vim.g.codedark_term256 == 1 then
			return fg.cterm256
		else
			return fg.cterm
		end
	end

	local ctermbg = function ()
		if vim.g.codedark_term256 == 1 then
			return bg.cterm256
		else
			return bg.cterm
		end
	end
	local foreground = fg and " guifg=" .. fg.gui .. " ctermfg=" .. ctermfg() or " guifg=NONE ctermfg=NONE"
	local background = bg and " guibg=" .. bg.gui .. " ctermbg=" .. ctermbg() or " guibg=NONE ctermbg=NONE"
	local attributes = attr and " gui=" .. attr  .. " cterm=" .. attr or " gui=NONE cterm=NONE"
	local special = sp and " guisp=" .. sp.gui or ""
	vim.api.nvim_command("highlight " .. group .. foreground .. background .. attributes .. special)
end

local c = {}
-- Terminal colors (base16):
c.cterm00 = "00"
c.cterm03 = "08"
c.cterm05 = "07"
c.cterm07 = "15"
c.cterm08 = "01"
c.cterm0A = "03"
c.cterm0B = "02"
c.cterm0C = "06"
c.cterm0D = "04"
c.cterm0E = "05"

if vim.fn.exists('base16colorspace') == 1 then
  c.cterm01 = "18"
  c.cterm02 = "19"
  c.cterm04 = "20"
  c.cterm06 = "21"
  c.cterm09 = "16"
  c.cterm0F = "17"
else
  c.cterm01 = "00"
  c.cterm02 = "08"
  c.cterm04 = "07"
  c.cterm06 = "07"
  c.cterm09 = "06"
  c.cterm0F = "03"
end

-- General appearance colors
c.cdNone = {gui= 'NONE', cterm= 'NONE', cterm256= 'NONE'}
c.cdFront = {gui= '#D4D4D4', cterm= c.cterm05, cterm256= '188'}
c.cdBack = {gui= '#1E1E1E', cterm= c.cterm00, cterm256= '234'}

c.cdTabCurrent = {gui= '#1E1E1E', cterm= c.cterm00, cterm256= '234'}
c.cdTabOther = {gui= '#2D2D2D', cterm= c.cterm01, cterm256= '236'}
c.cdTabOutside = {gui= '#252526', cterm= c.cterm01, cterm256= '235'}

c.cdLeftDark = {gui= '#252526', cterm= c.cterm01, cterm256= '235'}
c.cdLeftMid = {gui= '#373737', cterm= c.cterm03, cterm256= '237'}
c.cdLeftLight = {gui= '#3F3F46', cterm= c.cterm03, cterm256= '238'}

c.cdPopupFront = {gui= '#BBBBBB', cterm= c.cterm06, cterm256= '250'}
c.cdPopupBack = {gui= '#2D2D30', cterm= c.cterm01, cterm256= '236'}
c.cdPopupHighlightBlue = {gui= '#073655', cterm= c.cterm0D, cterm256= '24'}
c.cdPopupHighlightGray = {gui= '#3D3D40', cterm= c.cterm03, cterm256= '237'}

c.cdSplitLight = {gui= '#898989', cterm= c.cterm04, cterm256= '245'}
c.cdSplitDark = {gui= '#444444', cterm= c.cterm03, cterm256= '238'}
c.cdSplitThumb = {gui= '#424242', cterm= c.cterm04, cterm256= '238'}

c.cdCursorDarkDark = {gui= '#222222', cterm= c.cterm01, cterm256= '235'}
c.cdCursorDark = {gui= '#51504F', cterm= c.cterm03, cterm256= '239'}
c.cdCursorLight = {gui= '#AEAFAD', cterm= c.cterm04, cterm256= '145'}
c.cdSelection = {gui= '#264F78', cterm= c.cterm03, cterm256= '24'}
c.cdLineNumber = {gui= '#5A5A5A', cterm= c.cterm04, cterm256= '240'}

c.cdDiffRedDark = {gui= '#4B1818', cterm= c.cterm08, cterm256= '52'}
c.cdDiffRedLight = {gui= '#6F1313', cterm= c.cterm08, cterm256= '52'}
c.cdDiffRedLightLight = {gui= '#FB0101', cterm= c.cterm08, cterm256= '09'}
c.cdDiffGreenDark = {gui= '#373D29', cterm= c.cterm0B, cterm256= '237'}
c.cdDiffGreenLight = {gui= '#4B5632', cterm= c.cterm09, cterm256= '58'}
c.cdSearchCurrent = {gui= '#4B5632', cterm= c.cterm09, cterm256= '58'}
c.cdSearch = {gui= '#264F78', cterm= c.cterm03, cterm256= '24'}

-- Syntax colors
c.cdGray = {gui= '#808080', cterm= c.cterm04, cterm256= '08'}
c.cdViolet = {gui= '#646695', cterm= c.cterm04, cterm256= '60'}
c.cdBlue = {gui= '#569CD6', cterm= c.cterm0D, cterm256= '75'}
c.cdDarkBlue = {gui= '#223E55', cterm= c.cterm0D, cterm256= '73'}
c.cdLightBlue = {gui= '#9CDCFE', cterm= c.cterm0C, cterm256= '117'}
c.cdGreen = {gui= '#6A9955', cterm= c.cterm0B, cterm256= '65'}
c.cdBlueGreen = {gui= '#4EC9B0', cterm= c.cterm0F, cterm256= '43'}
c.cdLightGreen = {gui= '#B5CEA8', cterm= c.cterm09, cterm256= '151'}
c.cdRed = {gui= '#F44747', cterm= c.cterm08, cterm256= '203'}
c.cdOrange = {gui= '#CE9178', cterm= c.cterm0F, cterm256= '173'}
c.cdLightRed = {gui= '#D16969', cterm= c.cterm08, cterm256= '167'}
c.cdYellowOrange = {gui= '#D7BA7D', cterm= c.cterm0A, cterm256= '179'}
c.cdYellow = {gui= '#DCDCAA', cterm= c.cterm0A, cterm256= '187'}
c.cdPink = {gui= '#C586C0', cterm= c.cterm0E, cterm256= '176'}

if vim.g.codedark_conservative == 1 then
	c.cdLightBlue = c.cdFront
	c.cdYellow = c.cdFront
	c.cdLightRed = c.cdOrange
	c.cdPink = c.cdBlue
end

vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end

--- Vim editor colors
-- highlight(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
highlight('Normal', c.cdFront, c.cdBack, 'none', nil)
highlight('ColorColumn', nil, c.cdCursorDarkDark, 'none', nil)
highlight('Cursor', c.cdCursorDark, c.cdCursorLight, 'none', nil)
highlight('CursorLine', nil, c.cdCursorDarkDark, 'none', nil)
highlight('CursorColumn', nil, c.cdCursorDarkDark, 'none', nil)
highlight('Directory', c.cdBlue, c.cdBack, 'none', nil)
highlight('DiffAdd', nil, c.cdDiffGreenLight, 'none', nil)
highlight('DiffChange', nil, c.cdDiffRedDark, 'none', nil)
highlight('DiffDelete', nil, c.cdDiffRedLight, 'none', nil)
highlight('DiffText', nil, c.cdDiffRedLight, 'none', nil)
highlight('EndOfBuffer', c.cdBack, nil, 'none', nil)
highlight('ErrorMsg', c.cdRed, c.cdBack, 'none', nil)
highlight('VertSplit', c.cdSplitDark, c.cdBack, 'none', nil)
highlight('Folded', c.cdLeftLight, c.cdLeftDark, 'underline', nil)
highlight('FoldColumn', c.cdLineNumber, c.cdBack, 'none', nil)
highlight('SignColumn', nil, c.cdBack, 'none', nil)
highlight('IncSearch', c.cdNone, c.cdSearchCurrent, 'none', nil)
highlight('LineNr', c.cdLineNumber, c.cdBack, 'none', nil)
highlight('CursorLineNr', c.cdPopupFront, c.cdBack, 'none', nil)
highlight('MatchParen', c.cdNone, c.cdCursorDark, 'none', nil)
highlight('ModeMsg', c.cdFront, c.cdLeftDark, 'none', nil)
highlight('MoreMsg', c.cdFront, c.cdLeftDark, 'none', nil)
highlight('NonText', c.cdLineNumber, c.cdBack, 'none', nil)
highlight('Pmenu', c.cdPopupFront, c.cdPopupBack, 'none', nil)
highlight('PmenuSel', c.cdPopupFront, c.cdPopupHighlightBlue, 'none', nil)
highlight('PmenuSbar', nil, c.cdPopupHighlightGray, 'none', nil)
highlight('PmenuThumb', nil, c.cdPopupFront, 'none', nil)
highlight('Question', c.cdBlue, c.cdBack, 'none', nil)
highlight('Search', c.cdNone, c.cdSearch, 'none', nil)
highlight('SpecialKey', c.cdBlue, c.cdNone, 'none', nil)
highlight('StatusLine', c.cdFront, c.cdLeftMid, 'none', nil)
highlight('StatusLineNC', c.cdFront, c.cdLeftDark, 'none', nil)
highlight('TabLine', c.cdFront, c.cdTabOther, 'none', nil)
highlight('TabLineFill', c.cdFront, c.cdTabOutside, 'none', nil)
highlight('TabLineSel', c.cdFront, c.cdTabCurrent, 'none', nil)
highlight('Title', c.cdNone, c.cdNone, 'bold', nil)
highlight('Visual', c.cdNone, c.cdSelection, 'none', nil)
highlight('VisualNOS', c.cdNone, c.cdSelection, 'none', nil)
highlight('WarningMsg', c.cdOrange, c.cdBack, 'none', nil)
highlight('WildMenu', c.cdNone, c.cdSelection, 'none', nil)

-- Legacy groups for official git.vim and diff.vim syntax
vim.api.nvim_command("hi! link diffAdded DiffAdd")
vim.api.nvim_command("hi! link diffChanged DiffChange")
vim.api.nvim_command("hi! link diffRemoved DiffDelete")

highlight('Comment', c.cdGreen, nil, 'none', nil)

highlight('Constant', c.cdBlue, nil, 'none', nil)
highlight('String', c.cdOrange, nil, 'none', nil)
highlight('Character', c.cdOrange, nil, 'none', nil)
highlight('Number', c.cdLightGreen, nil, 'none', nil)
highlight('Boolean', c.cdBlue, nil, 'none', nil)
highlight('Float', c.cdLightGreen, nil, 'none', nil)

highlight('Identifier', c.cdLightBlue, nil, 'none', nil)
highlight('Function', c.cdYellow, nil, 'none', nil)

highlight('Statement', c.cdPink, nil, 'none', nil)
highlight('Conditional', c.cdPink, nil, 'none', nil)
highlight('Repeat', c.cdPink, nil, 'none', nil)
highlight('Label', c.cdPink, nil, 'none', nil)
highlight('Operator', c.cdFront, nil, 'none', nil)
highlight('Keyword', c.cdPink, nil, 'none', nil)
highlight('Exception', c.cdPink, nil, 'none', nil)

highlight('PreProc', c.cdPink, nil, 'none', nil)
highlight('Include', c.cdPink, nil, 'none', nil)
highlight('Define', c.cdPink, nil, 'none', nil)
highlight('Macro', c.cdPink, nil, 'none', nil)
highlight('PreCondit', c.cdPink, nil, 'none', nil)

highlight('Type', c.cdBlue, nil, 'none', nil)
highlight('StorageClass', c.cdBlue, nil, 'none', nil)
highlight('Structure', c.cdBlue, nil, 'none', nil)
highlight('Typedef', c.cdBlue, nil, 'none', nil)

highlight('Special', c.cdYellowOrange, nil, 'none', nil)
highlight('SpecialChar', c.cdFront, nil, 'none', nil)
highlight('Tag', c.cdFront, nil, 'none', nil)
highlight('Delimiter', c.cdFront, nil, 'none', nil)
highlight('SpecialComment', c.cdGreen, nil, 'none', nil)
highlight('Debug', c.cdFront, nil, 'none', nil)

highlight('Underlined', c.cdNone, nil, 'underline', nil)
highlight("Conceal", c.cdFront, c.cdBack, 'none', nil)

highlight('Ignore', c.cdFront, nil, 'none', nil)

highlight('Error', c.cdRed, c.cdBack, 'undercurl', c.cdRed)

highlight('Todo', c.cdBack, c.cdPink, 'bold', nil)
highlight('SpellBad', c.cdRed, c.cdBack, 'undercurl', c.cdRed)
highlight('SpellCap', c.cdRed, c.cdBack, 'undercurl', c.cdRed)
highlight('SpellRare', c.cdRed, c.cdBack, 'undercurl', c.cdRed)
highlight('SpellLocal', c.cdRed, c.cdBack, 'undercurl', c.cdRed)

-- Neovim Treesitter
highlight('TSError', c.cdRed, nil, 'none', nil)
highlight('TSPunctDelimiter', c.cdFront, nil, 'none', nil)
highlight('TSPunctBracket', c.cdFront, nil, 'none', nil)
highlight('TSPunctSpecial', c.cdFront, nil, 'none', nil)
highlight('TSConstant', c.cdYellow, nil, 'none', nil)
highlight('TSConstBuiltin', c.cdBlue, nil, 'none', nil)
highlight('TSConstMacro', c.cdBlueGreen, nil, 'none', nil)
highlight('TSStringRegex', c.cdOrange, nil, 'none', nil)
highlight('TSString', c.cdOrange, nil, 'none', nil)
highlight('TSStringEscape', c.cdYellowOrange, nil, 'none', nil)
highlight('TSCharacter', c.cdOrange, nil, 'none', nil)
highlight('TSNumber', c.cdLightGreen, nil, 'none', nil)
highlight('TSBoolean', c.cdBlue, nil, 'none', nil)
highlight('TSFloat', c.cdLightGreen, nil, 'none', nil)
highlight('TSAnnotation', c.cdYellow, nil, 'none', nil)
highlight('TSAttribute', c.cdBlueGreen, nil, 'none', nil)
highlight('TSNamespace', c.cdBlueGreen, nil, 'none', nil)
highlight('TSFuncBuiltin', c.cdYellow, nil, 'none', nil)
highlight('TSFunction', c.cdYellow, nil, 'none', nil)
highlight('TSFuncMacro', c.cdYellow, nil, 'none', nil)
highlight('TSParameter', c.cdLightBlue, nil, 'none', nil)
highlight('TSParameterReference', c.cdLightBlue, nil, 'none', nil)
highlight('TSMethod', c.cdYellow, nil, 'none', nil)
highlight('TSField', c.cdLightBlue, nil, 'none', nil)
highlight('TSProperty', c.cdLightBlue, nil, 'none', nil)
highlight('TSConstructor', c.cdBlueGreen, nil, 'none', nil)
highlight('TSConditional', c.cdPink, nil, 'none', nil)
highlight('TSRepeat', c.cdPink, nil, 'none', nil)
highlight('TSLabel', c.cdLightBlue, nil, 'none', nil)
highlight('TSKeyword', c.cdBlue, nil, 'none', nil)
highlight('TSKeywordFunction', c.cdPink, nil, 'none', nil)
highlight('TSKeywordOperator', c.cdBlue, nil, 'none', nil)
highlight('TSOperator', c.cdFront, nil, 'none', nil)
highlight('TSException', c.cdPink, nil, 'none', nil)
highlight('TSType', c.cdBlueGreen, nil, 'none', nil)
highlight('TSTypeBuiltin', c.cdBlue, nil, 'none', nil)
highlight('TSStructure', c.cdLightBlue, nil, 'none', nil)
highlight('TSInclude', c.cdPink, nil, 'none', nil)
highlight('TSVariable', c.cdLightBlue, nil, 'none', nil)
highlight('TSVariableBuiltin', c.cdLightBlue, nil, 'none', nil)
highlight('TSText', c.cdYellowOrange, nil, 'none', nil)
highlight('TSStrong', c.cdYellowOrange, nil, 'none', nil)
highlight('TSEmphasis', c.cdYellowOrange, nil, 'none', nil)
highlight('TSUnderline', c.cdYellowOrange, nil, 'none', nil)
highlight('TSTitle', c.cdYellowOrange, nil, 'none', nil)
highlight('TSLiteral', c.cdYellowOrange, nil, 'none', nil)
highlight('TSURI', c.cdYellowOrange, nil, 'none', nil)
highlight('TSTag', c.cdBlue, nil, 'none', nil)
highlight('TSTagDelimiter', c.cdGray, nil, 'none', nil)

-- Markdown
highlight('markdownBold', c.cdBlue, nil, 'bold', nil)
highlight('markdownCode', c.cdOrange, nil, 'none', nil)
highlight('markdownRule', c.cdBlue, nil, 'bold', nil)
highlight('markdownCodeDelimiter', c.cdOrange, nil, 'none', nil)
highlight('markdownHeadingDelimiter', c.cdBlue, nil, 'none', nil)
highlight('markdownFootnote', c.cdOrange, nil, 'none', nil)
highlight('markdownFootnoteDefinition', c.cdOrange, nil, 'none', nil)
highlight('markdownUrl', c.cdLightBlue, nil, 'underline', nil)
highlight('markdownLinkText', c.cdOrange, nil, 'none', nil)
highlight('markdownEscape', c.cdYellowOrange, nil, 'none', nil)

-- JSON
highlight('jsonKeyword', c.cdLightBlue, nil, 'none', nil)
highlight('jsonEscape', c.cdYellowOrange, nil, 'none', nil)
highlight('jsonNull', c.cdBlue, nil, 'none', nil)
highlight('jsonBoolean', c.cdBlue, nil, 'none', nil)

-- HTML
highlight('htmlTag', c.cdGray, nil, 'none', nil)
highlight('htmlEndTag', c.cdGray, nil, 'none', nil)
highlight('htmlTagName', c.cdBlue, nil, 'none', nil)
highlight('htmlSpecialTagName', c.cdBlue, nil, 'none', nil)
highlight('htmlArg', c.cdLightBlue, nil, 'none', nil)

-- PHP
highlight('phpStaticClasses', c.cdBlueGreen, nil, 'none', nil)
highlight('phpMethod', c.cdYellow, nil, 'none', nil)
highlight('phpClass', c.cdBlueGreen, nil, 'none', nil)
highlight('phpFunction', c.cdYellow, nil, 'none', nil)
highlight('phpInclude', c.cdBlue, nil, 'none', nil)
highlight('phpUseClass', c.cdBlueGreen, nil, 'none', nil)
highlight('phpRegion', c.cdBlueGreen, nil, 'none', nil)
highlight('phpMethodsVar', c.cdLightBlue, nil, 'none', nil)

-- CSS
highlight('cssBraces', c.cdFront, nil, 'none', nil)
highlight('cssInclude', c.cdPink, nil, 'none', nil)
highlight('cssTagName', c.cdYellowOrange, nil, 'none', nil)
highlight('cssClassName', c.cdYellowOrange, nil, 'none', nil)
highlight('cssPseudoClass', c.cdYellowOrange, nil, 'none', nil)
highlight('cssPseudoClassId', c.cdYellowOrange, nil, 'none', nil)
highlight('cssPseudoClassLang', c.cdYellowOrange, nil, 'none', nil)
highlight('cssIdentifier', c.cdYellowOrange, nil, 'none', nil)
highlight('cssProp', c.cdLightBlue, nil, 'none', nil)
highlight('cssDefinition', c.cdLightBlue, nil, 'none', nil)
highlight('cssAttr', c.cdOrange, nil, 'none', nil)
highlight('cssAttrRegion', c.cdOrange, nil, 'none', nil)
highlight('cssColor', c.cdOrange, nil, 'none', nil)
highlight('cssFunction', c.cdOrange, nil, 'none', nil)
highlight('cssFunctionName', c.cdOrange, nil, 'none', nil)
highlight('cssVendor', c.cdOrange, nil, 'none', nil)
highlight('cssValueNumber', c.cdOrange, nil, 'none', nil)
highlight('cssValueLength', c.cdOrange, nil, 'none', nil)
highlight('cssUnitDecorators', c.cdOrange, nil, 'none', nil)
highlight('cssStyle', c.cdLightBlue, nil, 'none', nil)
highlight('cssImportant', c.cdBlue, nil, 'none', nil)

-- JavaScript
highlight('jsVariableDef', c.cdLightBlue, nil, 'none', nil)
highlight('jsFuncArgs', c.cdLightBlue, nil, 'none', nil)
highlight('jsFuncBlock', c.cdLightBlue, nil, 'none', nil)
highlight('jsRegexpString', c.cdLightRed, nil, 'none', nil)
highlight('jsThis', c.cdBlue, nil, 'none', nil)
highlight('jsOperatorKeyword', c.cdBlue, nil, 'none', nil)
highlight('jsDestructuringBlock', c.cdLightBlue, nil, 'none', nil)
highlight('jsObjectKey', c.cdLightBlue, nil, 'none', nil)
highlight('jsGlobalObjects', c.cdBlueGreen, nil, 'none', nil)
highlight('jsModuleKeyword', c.cdLightBlue, nil, 'none', nil)
highlight('jsClassDefinition', c.cdBlueGreen, nil, 'none', nil)
highlight('jsClassKeyword', c.cdBlue, nil, 'none', nil)
highlight('jsExtendsKeyword', c.cdBlue, nil, 'none', nil)
highlight('jsExportDefault', c.cdPink, nil, 'none', nil)
highlight('jsFuncCall', c.cdYellow, nil, 'none', nil)
highlight('jsObjectValue', c.cdLightBlue, nil, 'none', nil)
highlight('jsParen', c.cdLightBlue, nil, 'none', nil)
highlight('jsObjectProp', c.cdLightBlue, nil, 'none', nil)
highlight('jsIfElseBlock', c.cdLightBlue, nil, 'none', nil)
highlight('jsParenIfElse', c.cdLightBlue, nil, 'none', nil)
highlight('jsSpreadOperator', c.cdLightBlue, nil, 'none', nil)
highlight('jsSpreadExpression', c.cdLightBlue, nil, 'none', nil)

-- Typescript
highlight('typescriptLabel', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptExceptions', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptBraces', c.cdFront, nil, 'none', nil)
highlight('typescriptEndColons', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptParens', c.cdFront, nil, 'none', nil)
highlight('typescriptDocTags', c.cdBlue, nil, 'none', nil)
highlight('typescriptDocComment', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptLogicSymbols', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptImport', c.cdPink, nil, 'none', nil)
highlight('typescriptBOM', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptVariableDeclaration', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptVariable', c.cdBlue, nil, 'none', nil)
highlight('typescriptExport', c.cdPink, nil, 'none', nil)
highlight('typescriptAliasDeclaration', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptAliasKeyword', c.cdBlue, nil, 'none', nil)
highlight('typescriptClassName', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptAccessibilityModifier', c.cdBlue, nil, 'none', nil)
highlight('typescriptOperator', c.cdBlue, nil, 'none', nil)
highlight('typescriptArrowFunc', c.cdBlue, nil, 'none', nil)
highlight('typescriptMethodAccessor', c.cdBlue, nil, 'none', nil)
highlight('typescriptMember', c.cdYellow, nil, 'none', nil)
highlight('typescriptTypeReference', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptDefault', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptTemplateSB', c.cdYellowOrange, nil, 'none', nil)
highlight('typescriptArrowFuncArg', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptParamImpl', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptFuncComma', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptCastKeyword', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptCall', c.cdBlue, nil, 'none', nil)
highlight('typescriptCase', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptReserved', c.cdPink, nil, 'none', nil)
highlight('typescriptDefault', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptDecorator', c.cdYellow, nil, 'none', nil)
highlight('typescriptPredefinedType', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptClassHeritage', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptClassExtends', c.cdBlue, nil, 'none', nil)
highlight('typescriptClassKeyword', c.cdBlue, nil, 'none', nil)
highlight('typescriptBlock', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptDOMDocProp', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptTemplateSubstitution', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptClassBlock', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptFuncCallArg', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptIndexExpr', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptConditionalParen', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptArray', c.cdYellow, nil, 'none', nil)
highlight('typescriptES6SetProp', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptObjectLiteral', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptTypeParameter', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptEnumKeyword', c.cdBlue, nil, 'none', nil)
highlight('typescriptEnum', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptLoopParen', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptParenExp', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptModule', c.cdLightBlue, nil, 'none', nil)
highlight('typescriptAmbientDeclaration', c.cdBlue, nil, 'none', nil)
highlight('typescriptModule', c.cdBlue, nil, 'none', nil)
highlight('typescriptFuncTypeArrow', c.cdBlue, nil, 'none', nil)
highlight('typescriptInterfaceHeritage', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptInterfaceName', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptInterfaceKeyword', c.cdBlue, nil, 'none', nil)
highlight('typescriptInterfaceExtends', c.cdBlue, nil, 'none', nil)
highlight('typescriptGlobal', c.cdBlueGreen, nil, 'none', nil)
highlight('typescriptAsyncFuncKeyword', c.cdBlue, nil, 'none', nil)
highlight('typescriptFuncKeyword', c.cdBlue, nil, 'none', nil)
highlight('typescriptGlobalMethod', c.cdYellow, nil, 'none', nil)
highlight('typescriptPromiseMethod', c.cdYellow, nil, 'none', nil)

-- XML
highlight('xmlTag', c.cdBlueGreen, nil, 'none', nil)
highlight('xmlTagName', c.cdBlueGreen, nil, 'none', nil)
highlight('xmlEndTag', c.cdBlueGreen, nil, 'none', nil)

-- Ruby
highlight('rubyClassNameTag', c.cdBlueGreen, nil, 'none', nil)
highlight('rubyClassName', c.cdBlueGreen, nil, 'none', nil)
highlight('rubyModuleName', c.cdBlueGreen, nil, 'none', nil)
highlight('rubyConstant', c.cdBlueGreen, nil, 'none', nil)

-- Golang
highlight('goPackage', c.cdBlue, nil, 'none', nil)
highlight('goImport', c.cdBlue, nil, 'none', nil)
highlight('goVar', c.cdBlue, nil, 'none', nil)
highlight('goConst', c.cdBlue, nil, 'none', nil)
highlight('goStatement', c.cdPink, nil, 'none', nil)
highlight('goType', c.cdBlueGreen, nil, 'none', nil)
highlight('goSignedInts', c.cdBlueGreen, nil, 'none', nil)
highlight('goUnsignedInts', c.cdBlueGreen, nil, 'none', nil)
highlight('goFloats', c.cdBlueGreen, nil, 'none', nil)
highlight('goComplexes', c.cdBlueGreen, nil, 'none', nil)
highlight('goBuiltins', c.cdYellow, nil, 'none', nil)
highlight('goBoolean', c.cdBlue, nil, 'none', nil)
highlight('goPredefinedIdentifiers', c.cdBlue, nil, 'none', nil)
highlight('goTodo', c.cdGreen, nil, 'none', nil)
highlight('goDeclaration', c.cdBlue, nil, 'none', nil)
highlight('goDeclType', c.cdBlue, nil, 'none', nil)
highlight('goTypeDecl', c.cdBlue, nil, 'none', nil)
highlight('goTypeName', c.cdBlueGreen, nil, 'none', nil)
highlight('goVarAssign', c.cdLightBlue, nil, 'none', nil)
highlight('goVarDefs', c.cdLightBlue, nil, 'none', nil)
highlight('goReceiver', c.cdFront, nil, 'none', nil)
highlight('goReceiverType', c.cdFront, nil, 'none', nil)
highlight('goFunctionCall', c.cdYellow, nil, 'none', nil)
highlight('goMethodCall', c.cdYellow, nil, 'none', nil)
highlight('goSingleDecl', c.cdLightBlue, nil, 'none', nil)

-- Python
highlight('pythonStatement', c.cdBlue, nil, 'none', nil)
highlight('pythonOperator', c.cdBlue, nil, 'none', nil)
highlight('pythonException', c.cdPink, nil, 'none', nil)
highlight('pythonExClass', c.cdBlueGreen, nil, 'none', nil)
highlight('pythonBuiltinObj', c.cdLightBlue, nil, 'none', nil)
highlight('pythonBuiltinType', c.cdBlueGreen, nil, 'none', nil)
highlight('pythonBoolean', c.cdBlue, nil, 'none', nil)
highlight('pythonNone', c.cdBlue, nil, 'none', nil)
highlight('pythonTodo', c.cdBlue, nil, 'none', nil)
highlight('pythonClassVar', c.cdBlue, nil, 'none', nil)
highlight('pythonClassDef', c.cdBlueGreen, nil, 'none', nil)

-- TeX
highlight('texStatement', c.cdBlue, nil, 'none', nil)
highlight('texBeginEnd', c.cdYellow, nil, 'none', nil)
highlight('texBeginEndName', c.cdLightBlue, nil, 'none', nil)
highlight('texOption', c.cdLightBlue, nil, 'none', nil)
highlight('texBeginEndModifier', c.cdLightBlue, nil, 'none', nil)
highlight('texDocType', c.cdPink, nil, 'none', nil)
highlight('texDocTypeArgs', c.cdLightBlue, nil, 'none', nil)

-- Git
highlight('gitcommitHeader', c.cdGray, nil, 'none', nil)
highlight('gitcommitOnBranch', c.cdGray, nil, 'none', nil)
highlight('gitcommitBranch', c.cdPink, nil, 'none', nil)
highlight('gitcommitComment', c.cdGray, nil, 'none', nil)
highlight('gitcommitSelectedType', c.cdGreen, nil, 'none', nil)
highlight('gitcommitSelectedFile', c.cdGreen, nil, 'none', nil)
highlight('gitcommitDiscardedType', c.cdRed, nil, 'none', nil)
highlight('gitcommitDiscardedFile', c.cdRed, nil, 'none', nil)
highlight('gitcommitOverflow', c.cdRed, nil, 'none', nil)
highlight('gitcommitSummary', c.cdPink, nil, 'none', nil)
highlight('gitcommitBlank', c.cdPink, nil, 'none', nil)

-- Lua
highlight('luaFuncCall', c.cdYellow, nil, 'none', nil)
highlight('luaFuncArgName', c.cdLightBlue, nil, 'none', nil)
highlight('luaFuncKeyword', c.cdPink, nil, 'none', nil)
highlight('luaLocal', c.cdPink, nil, 'none', nil)
highlight('luaBuiltIn', c.cdBlue, nil, 'none', nil)

-- SH
highlight('shDeref', c.cdLightBlue, nil, 'none', nil)
highlight('shVariable', c.cdLightBlue, nil, 'none', nil)

-- SQL
highlight('sqlKeyword', c.cdPink, nil, 'none', nil)
highlight('sqlFunction', c.cdYellowOrange, nil, 'none', nil)
highlight('sqlOperator', c.cdPink, nil, 'none', nil)

-- YAML
highlight('yamlKey', c.cdBlue, nil, 'none', nil)
highlight('yamlConstant', c.cdBlue, nil, 'none', nil)

-- Gitgutter
highlight('GitGutterAdd', c.cdGreen, nil, 'none', nil)
highlight('GitGutterChange', c.cdYellow, nil, 'none', nil)
highlight('GitGutterDelete', c.cdRed, nil, 'none', nil)

-- Git Signs
highlight('GitSignsAdd', c.cdGreen, nil, 'none', nil)
highlight('GitSignsChange', c.cdYellow, nil, 'none', nil)
highlight('GitSignsDelete', c.cdRed, nil, 'none', nil)
highlight('GitSignsAddLn', c.cdBack, c.cdGreen, 'none', nil)
highlight('GitSignsChangeLn', c.cdBack, c.cdYellow, 'none', nil)
highlight('GitSignsDeleteLn', c.cdBack, c.cdRed, 'none', nil)

-- Nvim compe
vim.api.nvim_command("highlight! link CompeDocumentation Pmenu")

-- Telescope
highlight("TelescopePromptBorder", c.cdGreen, nil, 'none', nil)
highlight("TelescopeResultsBorder", c.cdBlue, nil, 'none', nil)
highlight("TelescopePreviewBorder", c.cdPink, nil, 'none', nil)

-- NvimTree
highlight("NvimTreeRootFolder", c.cdLightBlue, nil, 'bold', nil)
highlight("NvimTreeGitDirty", c.cdYellow, nil, 'none', nil)
highlight("NvimTreeGitNew", c.cdGreen, nil, 'none', nil)
highlight("NvimTreeImageFile", c.cdViolet, nil, 'none', nil)
highlight("NvimTreeFolderIcon", c.cdBlue, nil, 'none', nil)
highlight("NvimTreeIndentMarker", c.cdLineNumber, nil, 'none', nil)
highlight("NvimTreeEmptyFolderName", c.cdGray, nil, 'none', nil)
highlight("NvimTreeFolderName", c.cdLightBlue, nil, 'none', nil)
highlight("NvimTreeSpecialFile", c.cdPink, nil, 'underline', nil)
highlight("NvimTreeNormal ", c.cdLightBlue, c.cdLeftDark, 'none', nil)
highlight("NvimTreeCursorLine", nil, c.cdBack, 'none', nil)
highlight("NvimTreeVertSplit", c.cdBack, c.cdBack, 'none', nil)
highlight("NvimTreeEndOfBuffer", c.cdLeftDark, nil, 'none', nil)
highlight("NvimTreeOpenedFolderName", nil, c.cdLeftDark, 'none', nil)

-- Bufferline
highlight("BufferLineIndicatorSelected", c.cdLeftDark , nil, 'none', nil)
highlight("BufferLineFill", nil , c.cdLeftDark, 'none', nil)

-- LSP
highlight('LspDiagnosticsDefaultError', c.cdRed, nil, 'none', nil)
highlight('LspDiagnosticsDefaultWarning', c.cdYellow, nil, 'none', nil)
highlight('LspDiagnosticsDefaultInformation', c.cdBlue, nil, 'none', nil)
highlight('LspDiagnosticsDefaultHint', c.cdBlue, nil, 'none', nil)
highlight('LspDiagnosticsUnderlineError', c.cdRed, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineWarning', c.cdYellow, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineInformation', c.cdBlue, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineHint', c.cdBlue, nil, 'undercurl', nil)
highlight('LspReferenceText', c.cdYellowOrange, nil, 'none', nil)
highlight('LspReferenceRead', c.cdYellowOrange, nil, 'none', nil)
highlight('LspReferenceWrite', c.cdYellowOrange, nil, 'none', nil)
