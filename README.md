<h1 align="center">vscode.nvim</h1>

vscode.nvim (formerly `codedark.nvim`) is a Lua port of [vim-code-dark](https://github.com/tomasiser/vim-code-dark) colorscheme for [neovim](https://github.com/neovim/neovim) with VScode's light and dark theme

![VSCode.nvim](./demo.png)

## Supported Plugins

- [BarBar](https://github.com/romgrk/barbar.nvim)
- [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [LSP](https://github.com/neovim/nvim-lspconfig)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)

## ⬇️ Installation

Install via package manager

```lua
-- Packer:
use 'Mofiqul/vscode.nvim'
```

```vim
" Vim-Plug:
Plug 'Mofiqul/vscode.nvim'
```

## 🚀 Usage

```lua
-- Lua:
-- For dark theme (neovim's default)
vim.o.background = 'dark'
-- For light theme
vim.o.background = 'light'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light'

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
require('vscode').load()
```


If you are using [`lualine`](https://github.com/hoob3rt/lualine.nvim), you can also enable the provided theme:

```lua
require('lualine').setup({
    options = {
        -- ...
        theme = 'vscode',
        -- ...
    },
})
```

[nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)  setup for exact match as screenshots

```lua
require("bufferline").setup({
    options = {
        buffer_close_icon = "",
        close_command = "bdelete %d",
        close_icon = "",
        indicator = {
          style = "icon",
          icon = " ",
        },
        left_trunc_marker = "",
        modified_icon = "●",
        offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
        right_mouse_command = "bdelete! %d",
        right_trunc_marker = "",
        show_close_icon = false,
        show_tab_indicators = true,
    },
    highlights = {
        fill = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        background = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        buffer_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        separator = {
            fg = { attribute = "bg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        separator_selected = {
            fg = { attribute = "fg", highlight = "Special" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        separator_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        close_button = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        close_button_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        close_button_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
    },
})
```

## Switching theme

```
:lua require('vscode').load('light')
:lua require('vscode').load('dark')
```

## 🍭 Extra folder

- [Alacritty](https://github.com/alacritty/alacritty) color scheme
- [Foot](https://codeberg.org/dnkl/foot) color scheme
- [galaxyline.nvim](https://github.com/glepnir/galaxyline.nvim) theme
- [i3](https://i3wm.org/) color scheme
- [Kitty](https://sw.kovidgoyal.net/kitty/) color scheme
- [WezTerm](https://wezfurlong.org/wezterm/) color scheme
- [Windows Terminal](https://github.com/microsoft/terminal) color scheme
- [Xresources](https://wiki.debian.org/Xresources) color scheme
- [zathura](https://pwmt.org/projects/zathura/) color scheme

## Something is broken but I know how to fix it!

Pull requests are welcome! Feel free to send one with an explanation!
