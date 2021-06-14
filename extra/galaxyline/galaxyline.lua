local gl = require('galaxyline')

local colors = {
  fg            = '#ffffff',
  bg            = '#252526',
  red           = '#f44747',
  green         = '#619955',
  bluegreen     = '#4ec9b0',
  blue          = '#0a7aca',
  lightblue     = '#5CB6F8',
  yellow        = '#ffaf00',
  yelloworrange = '#d7ba7d',
  pink          = "#c586c0"
}

if vim.o.background == "light" then
    colors.fg     = '#343434'
	colors.bg     = "#f3f3f3"
	colors.green  = "#008000"
	colors.bluegreen = "#16825d"
	colors.yellow = '#795e26'
	colors.pink   = "#af00db"
end

local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree', 'vista','dbui','packer'}

gls.left[1] = {
  FirstElement = {
    provider = function() return ' ' end,
    highlight = {colors.bg,colors.bg}
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
		local mode_text = {
			n = "NORMAL",
			i = "INSERT",
			V = "VISUAL",
			R = "REPLACE",
			c = "COMMAND"
		}

		return mode_text[vim.fn.mode()]
	end,
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.blue,colors.bg, "bold"},
  },
}

gls.left[3] = {
  GitIcon = {
    provider = function() return '' end,
    condition = condition.check_git_workspace,
	separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.pink,colors.bg},
  }
}

gls.left[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.pink,colors.bg},
  },
}

gls.left[5] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function ()
      local tbl = {['dashboard'] = true,['']=true}
      if tbl[vim.bo.filetype] then
        return false
      end
      return true
    end,
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.bluegreen,colors.bg}
  }
}

gls.left[6] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = ' ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[7] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = ' ',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.left[8] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = ' ',
    highlight = {colors.pink,colors.bg},
  }
}

gls.left[9] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = ' ',
    highlight = {colors.lightblue,colors.bg},
  }
}

-- Right Side
gls.right[1] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg}
  }
}

gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = {colors.fg,colors.bg},
  },
}

gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    highlight = {colors.fg,colors.bg},
  }
}

gls.right[4] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.fg,colors.bg}
  }
}

gls.right[5] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.fg,colors.bg}
  }
}

gls.right[6] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}

gls.right[7] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.green,colors.bg},
  }
}


gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    highlight = {colors.blue,colors.bg, "bold"}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.bg,colors.bg}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.bg,colors.bg}
  }
}
