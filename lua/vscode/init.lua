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
vscode.load = function(style)
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'vscode'

    local background = style or config.opts.style
    if background then
        vim.o.background = background
    end


    theme.set_highlights(config.opts)
    theme.link_highlight()

    if config.opts.group_overrides then
        for group, val in pairs(config.opts['group_overrides']) do
            vim.api.nvim_set_hl(0, group, val)
        end
    end
end

return vscode
