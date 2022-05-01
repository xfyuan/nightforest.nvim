local colors = require('nightforest.colors')

local nightforest = {
  normal = {
    a = { fg = colors.bg, bg = colors.statusline1, gui = 'bold' },
    b = { fg = colors.grey2, bg = colors.bg3 },
    c = { fg = colors.grey1, bg = colors.bg1 },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.statusline3, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg3 },
    c = { fg = colors.fg, bg = colors.bg1 },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.orange, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg3 },
    c = { fg = colors.fg, bg = colors.bg1 },
  },
  inactive = {
    a = { fg = colors.grey1, bg = colors.bg1, gui = 'bold' },
    b = { fg = colors.grey1, bg = colors.bg1 },
    c = { fg = colors.grey1, bg = colors.bg1 },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.statusline2, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg3 },
    c = { fg = colors.fg, bg = colors.bg1 },
  },
  command = {
    a = { fg = colors.bg, bg = colors.aqua, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg3 },
    c = { fg = colors.fg, bg = colors.bg1 },
  },
  terminal = {
    a = { fg = colors.bg, bg = colors.purple, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg3 },
    c = { fg = colors.fg, bg = colors.bg1 },
  },
}

return nightforest
