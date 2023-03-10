-- vscode.nvim color scheme
-- Lua port of https://github.com/tomasiser/vim-code-dark
-- By http://github.com/mofiqul
local vscode = {}
local config = require('vscode.config')
local theme = require('vscode.theme')

-- Pass setup to config module
vscode.setup = config.setup

-- Load colorscheme with a given or default style
---@param style? string
vscode.load = function()
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'vscode'

    theme.set_highlights(config.opts)
    theme.link_highlight()

    for group, val in pairs(config.opts['group_overrides']) do
        vim.api.nvim_set_hl(0, group, val)
    end
end

vscode.change_style = function(style)
    vim.o.background = style
    vim.cmd([[colorscheme vscode]])
end

return vscode
