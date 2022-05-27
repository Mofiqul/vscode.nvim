-- vscode.nvim color scheme
-- Lua port of https://github.com/tomasiser/vim-code-dark
-- By http://github.com/mofiqul

local utils = require('vscode.utils')
local vscode = {}

vscode.set = function()
    utils.load()
end

vscode.change_style = function(style)
    vim.o.background = style
    print('Vscode style: ', style)
    vim.cmd([[colorscheme vscode]])
end

return vscode
