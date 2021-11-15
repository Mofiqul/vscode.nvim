-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local vscode = {}
local colors = {}

if(vim.g.vscode_style == "dark") then
	colors.black        = "#262626",
	colors.white        = '#ffffff',
	colors.red          = '#f44747',
	colors.green        = '#619955',
	colors.blue         = '#0a7aca',
	colors.lightblue    = '#5CB6F8',
	colors.yellow       = '#ffaf00',
else
	colors.black        = "#E5E5E5",
	colors.white        = '#343434',
	colors.red          = '#FF0000',
	colors.green        = '#008000',
	colors.blue         = '#AF00DB',
	colors.lightblue    = '#0451A5',
	colors.yellow       = '#ffaf00',
end

vscode.normal = {
  b = {fg = colors.blue, bg = colors.black},
  a = {fg = colors.white, bg = colors.blue, gui = 'bold'},
  c = {fg = colors.white, bg = colors.black}
}

vscode.visual = {
  a = {fg = colors.black, bg = colors.lightblue, gui = 'bold'},
  b = {fg = colors.lightblue, bg = colors.black},
}

vscode.inactive = {
  b = {fg = colors.black, bg = colors.white},
  a = {fg = colors.white, bg = colors.gray, gui = 'bold'}
}

vscode.replace = {
  b = {fg = colors.yellow, bg = colors.black},
  a = {fg = colors.black, bg = colors.yellow, gui = 'bold'},
  c = {fg = colors.white, bg = colors.black}
}

vscode.insert = {
  a = {fg = colors.black, bg = colors.yellow, gui = 'bold'},
  b = {fg = colors.yellow, bg = colors.black},
  c = {fg = colors.white, bg = colors.black}
}

return vscode
