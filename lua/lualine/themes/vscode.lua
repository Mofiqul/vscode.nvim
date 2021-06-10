-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local codedark = {}

local colors = {
  black        = "#262626",
  white        = '#ffffff',
  red          = '#f44747',
  green        = '#619955',
  blue         = '#0a7aca',
  lightblue    = '#5CB6F8',
  yellow       = '#ffaf00',
}

codedark.normal = {
  b = {fg = colors.blue, bg = colors.black},
  a = {fg = colors.white, bg = colors.blue, gui = 'bold'},
  c = {fg = colors.white, bg = colors.black}
}

codedark.visual = {
  a = {fg = colors.black, bg = colors.lightblue, gui = 'bold'},
  b = {fg = colors.lightblue, bg = colors.black},
}

codedark.inactive = {
  b = {fg = colors.black, bg = colors.white},
  a = {fg = colors.white, bg = colors.gray, gui = 'bold'}
}

codedark.replace = {
  b = {fg = colors.yellow, bg = colors.black},
  a = {fg = colors.black, bg = colors.yellow, gui = 'bold'},
  c = {fg = colors.white, bg = colors.black}
}

codedark.insert = {
  a = {fg = colors.black, bg = colors.yellow, gui = 'bold'},
  b = {fg = colors.yellow, bg = colors.black},
  c = {fg = colors.white, bg = colors.black}
}

return codedark
