local gl = require('galaxyline')

local status_line = {}
local colors = {}

colors.fg = function()
    if vim.o.background == 'dark' then
        return '#ffffff'
    else
        return '#343434'
    end
end

colors.bg = function()
    if vim.o.background == 'dark' then
        return '#252526'
    else
        return '#f3f3f3'
    end
end

colors.green = function()
    if vim.o.background == 'dark' then
        return '#619955'
    else
        return '#008000'
    end
end

colors.bluegreen = function()
    if vim.o.background == 'dark' then
        return '#4ec9b0'
    else
        return '#16825d'
    end
end

colors.yellow = function()
    if vim.o.background == 'dark' then
        return '#ffaf00'
    else
        return '#795e26'
    end
end

colors.pink = function()
    if vim.o.background == 'dark' then
        return '#c586c0'
    else
        return '#af00db'
    end
end

colors.yelloworrange = function()
    return '#d7ba7d'
end

colors.blue = function()
    return '#0a7aca'
end

colors.red = function()
    return '#f44747'
end

colors.lightblue = function()
    return '#5CB6F8'
end

status_line.setup = function()
    local condition = require('galaxyline.condition')
    local gls = gl.section
    gl.short_line_list = { 'NvimTree', 'vista', 'dbui', 'packer' }

    gls.left[1] = {
        FirstElement = {
            provider = function()
                return ' '
            end,
            highlight = { colors.bg, colors.bg },
        },
    }

    gls.left[2] = {
        ViMode = {
            provider = function()
                local mode_text = {
                    n = 'NORMAL',
                    i = 'INSERT',
                    V = 'VISUAL',
                    R = 'REPLACE',
                    c = 'COMMAND',
                }

                return mode_text[vim.fn.mode()]
            end,
            separator = ' ',
            separator_highlight = { colors.bg, colors.bg },
            highlight = { colors.blue, colors.bg, 'bold' },
        },
    }

    gls.left[3] = {
        GitIcon = {
            provider = function()
                return ''
            end,
            condition = condition.check_git_workspace,
            separator = ' ',
            separator_highlight = { colors.bg, colors.bg },
            highlight = { colors.pink, colors.bg },
        },
    }

    gls.left[4] = {
        GitBranch = {
            provider = 'GitBranch',
            condition = condition.check_git_workspace,
            separator = ' ',
            separator_highlight = { colors.bg, colors.bg },
            highlight = { colors.pink, colors.bg },
        },
    }

    gls.left[5] = {
        ShowLspClient = {
            provider = 'GetLspClient',
            condition = function()
                local tbl = { ['dashboard'] = true, [''] = true }
                if tbl[vim.bo.filetype] then
                    return false
                end
                return true
            end,
            separator = ' ',
            separator_highlight = { colors.bg, colors.bg },
            highlight = { colors.bluegreen, colors.bg },
        },
    }

    gls.left[6] = {
        DiagnosticError = {
            provider = 'DiagnosticError',
            icon = ' ',
            highlight = { colors.red, colors.bg },
        },
    }
    gls.left[7] = {
        DiagnosticWarn = {
            provider = 'DiagnosticWarn',
            icon = ' ',
            highlight = { colors.yellow, colors.bg },
        },
    }

    gls.left[8] = {
        DiagnosticHint = {
            provider = 'DiagnosticHint',
            icon = ' ',
            highlight = { colors.pink, colors.bg },
        },
    }

    gls.left[9] = {
        DiagnosticInfo = {
            provider = 'DiagnosticInfo',
            icon = ' ',
            highlight = { colors.lightblue, colors.bg },
        },
    }

    -- Right Side
    gls.right[1] = {
        FileSize = {
            provider = 'FileSize',
            condition = condition.buffer_not_empty,
            highlight = { colors.fg, colors.bg },
        },
    }

    gls.right[2] = {
        LineInfo = {
            provider = 'LineColumn',
            highlight = { colors.fg, colors.bg },
        },
    }

    gls.right[3] = {
        PerCent = {
            provider = 'LinePercent',
            highlight = { colors.fg, colors.bg },
        },
    }

    gls.right[4] = {
        FileEncode = {
            provider = 'FileEncode',
            condition = condition.hide_in_width,
            separator = ' ',
            separator_highlight = { colors.bg, colors.bg },
            highlight = { colors.fg, colors.bg },
        },
    }

    gls.right[5] = {
        FileFormat = {
            provider = 'FileFormat',
            condition = condition.hide_in_width,
            separator = ' ',
            separator_highlight = { colors.bg, colors.bg },
            highlight = { colors.fg, colors.bg },
        },
    }

    gls.right[6] = {
        FileIcon = {
            provider = 'FileIcon',
            condition = condition.buffer_not_empty,
            separator = ' ',
            separator_highlight = { colors.bg, colors.bg },
            highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color, colors.bg },
        },
    }

    gls.right[7] = {
        FileName = {
            provider = 'FileName',
            condition = condition.buffer_not_empty,
            highlight = { colors.green, colors.bg },
        },
    }

    gls.short_line_left[1] = {
        BufferType = {
            provider = 'FileTypeName',
            highlight = { colors.blue, colors.bg, 'bold' },
        },
    }

    gls.short_line_left[2] = {
        SFileName = {
            provider = 'SFileName',
            condition = condition.buffer_not_empty,
            highlight = { colors.bg, colors.bg },
        },
    }

    gls.short_line_right[1] = {
        BufferIcon = {
            provider = 'BufferIcon',
            highlight = { colors.bg, colors.bg },
        },
    }
end

return status_line
