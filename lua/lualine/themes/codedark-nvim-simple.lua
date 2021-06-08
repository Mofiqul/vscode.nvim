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
  b = {fg = colors.white, bg = colors.blue},
  a = {fg = colors.white, bg = colors.blue, gui = 'bold'},
  c = {fg = colors.white, bg = colors.blue}
}

return codedark

