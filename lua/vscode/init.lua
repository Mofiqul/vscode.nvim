-- vscode.nvim color scheme
-- Lua port of https://github.com/tomasiser/vim-code-dark
-- By http://github.com/mofiqul
local vscode = {}
local theme = require('vscode.theme')

vscode.setup = function(user_opts)
    local defaults = {
        transparent = false,
        italic_comments = false,
        color_overrides = {},
        group_overrides = {},
        disable_nvimtree_bg = true,
    }
    local opts = vim.tbl_extend('force', defaults, user_opts)

    -- setting transparent to true removes the default background
    if opts.transparent then
        opts.color_overrides.vscBack = 'NONE'
    end

    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'vscode'

    theme.set_highlights(opts)
    theme.link_highlight()

    for group, val in pairs(opts['group_overrides']) do
        vim.api.nvim_set_hl(0, group, val)
    end
end

vscode.change_style = function(style)
    vim.o.background = style
    print('Vscode style: ', style)
    vim.cmd([[colorscheme vscode]])
end

return vscode
