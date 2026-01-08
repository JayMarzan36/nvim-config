vim.opt.background = 'dark'
vim.g.colors_name = 'color_scheme'

package.loaded['lush_theme.color_scheme'] = nil
require('lush')(require('lush_theme.color_scheme'))
