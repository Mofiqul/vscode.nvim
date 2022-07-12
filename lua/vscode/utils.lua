local theme = require('vscode.theme')

local utils = {}

utils.load = function()
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'vscode'

    theme.load_syntax()
    theme.link_highlight()
end

return utils
