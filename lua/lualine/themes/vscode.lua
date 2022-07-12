-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local vscode = {}
local colors = {}

if vim.o.background == 'dark' then
    colors.bg = '#262626'
    colors.bg2 = '#373737'
    colors.fg = '#ffffff'
    colors.red = '#f44747'
    colors.green = '#4EC9B0'
    colors.blue = '#0a7aca'
    colors.lightblue = '#5CB6F8'
    colors.yellow = '#ffaf00'
    colors.pink = '#DDB6F2'
else
    colors.bg = '#F5F5F5'
    colors.bg2 = '#E4E4E4'
    colors.fg = '#343434'
    colors.red = '#FF0000'
    colors.green = '#008000'
    colors.blue = '#AF00DB'
    colors.lightblue = '#0451A5'
    colors.yellow = '#ffaf00'
    colors.pink = '#FFA3A3'
end

vscode.normal = {
    b = { fg = colors.blue, bg = colors.bg2 },
    a = { fg = vim.o.background == 'dark' and colors.fg or colors.bg, bg = colors.blue, gui = 'bold' },
    c = { fg = colors.fg, bg = colors.bg },
}

vscode.visual = {
    a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.yellow, bg = colors.bg2 },
}

vscode.inactive = {
    b = { fg = colors.bg, bg = colors.fg },
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
}

vscode.replace = {
    b = { fg = colors.red, bg = colors.bg2 },
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.red, gui = 'bold' },
    c = { fg = colors.fg, bg = colors.bg },
}

vscode.insert = {
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.green, bg = colors.bg2 },
    c = { fg = colors.fg, bg = colors.bg },
}

vscode.command = {
    b = { fg = colors.pink, bg = colors.bg2 },
    a = { fg = vim.o.background == 'dark' and colors.bg or colors.fg, bg = colors.pink, gui = 'bold' },
    c = { fg = colors.fg, bg = colors.bg },
}

return vscode
