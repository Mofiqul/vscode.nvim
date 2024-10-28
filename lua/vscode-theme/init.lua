-- vscode.nvim color scheme
-- Lua port of https://github.com/tomasiser/vim-code-dark
-- By http://github.com/mofiqul
local vscode_theme = {}
local config = require('vscode-theme.config')
local theme = require('vscode-theme.theme')
local utils = require('vscode-theme.utils')

-- Pass setup to config module
vscode_theme.setup = config.setup

-- Load colorscheme with a given or default style
---@param style? string
vscode_theme.load = function(style)
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'vscode-theme'
    if config.opts.terminal_colors then
        utils.terminal(require('vscode-theme.colors').get_colors())
    end

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

return vscode_theme
