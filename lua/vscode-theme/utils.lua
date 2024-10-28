local utils = {}

utils.terminal = function(colors)
  -- dark
  vim.g.terminal_color_0 = colors.vscBack
  vim.g.terminal_color_8 = colors.vscGray

  -- light
  vim.g.terminal_color_7 = colors.vscFront
  vim.g.terminal_color_15 = colors.vscFront

  -- colors
  vim.g.terminal_color_1 = colors.vscRed
  vim.g.terminal_color_9 = colors.vscRed

  vim.g.terminal_color_2 = colors.vscGreen
  vim.g.terminal_color_10 = colors.vscGreen

  vim.g.terminal_color_3 = colors.vscYellow
  vim.g.terminal_color_11 = colors.vscYellow

  vim.g.terminal_color_4 = colors.vscBlue
  vim.g.terminal_color_12 = colors.vscBlue

  vim.g.terminal_color_5 = colors.vscPink
  vim.g.terminal_color_13 = colors.vscPink

  vim.g.terminal_color_6 = colors.vscBlueGreen
  vim.g.terminal_color_14 = colors.vscBlueGreen
end

return utils
