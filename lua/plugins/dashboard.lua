return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')
        dashboard.section.header.val = {
         "                  ",
         "                  ",
         "                  ",
         "---- 01000010 ----",
         "---- 01101100 ----",
         "---- 01100001 ----",
         "---- 01100011 ----",
         "---- 01101011 ----",
         "---- 00101101 ----",
         "---- 01000010 ----",
         "---- 01101111 ----",
         "---- 01111000 ----",
        }

      dashboard.section.buttons.val = {
         dashboard.button("e", " New File", ":new<CR>"),
         dashboard.button("SPC f t", " Open File Tree", ":Neotree filesystem reveal right<CR>"),
         dashboard.button("SPC f f", " Find file", ":Telescope find_files<CR>"),
         dashboard.button("SPC l g", " Live Grep", ":Telescope live_grep<CR>"),
         dashboard.button("q", " Quit", ":qall<CR>"),
      }

      alpha.setup(dashboard.opts)
    end
}
