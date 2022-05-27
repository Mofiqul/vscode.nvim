local theme = require('vscode.theme')

local utils = {}

utils.highlight = function(group, highlights)
    local fg = highlights[1] and ' guifg=' .. highlights[1] or ' guifg=NONE'
    local bg = highlights[2] and ' guibg=' .. highlights[2] or ' guibg=NONE'
    local attr = highlights[3] and ' gui=' .. highlights[3] or ' gui=NONE'
    local sp = highlights[4] and ' guisp=' .. highlights[4] or ''
    vim.api.nvim_command('highlight ' .. group .. fg .. bg .. attr .. sp)
end

utils.load = function()
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'vscode'

    local syntax = theme.load_syntax()

    for group, color in pairs(syntax) do
        utils.highlight(group, color)
    end

    theme.link_highlight()
end

return utils
