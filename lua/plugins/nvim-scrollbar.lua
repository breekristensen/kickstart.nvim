return {
  'petertriho/nvim-scrollbar',
  config = function()
    local colors = require('catppuccin.palettes').get_palette 'mocha'

    require('scrollbar').setup {
      show = true,
      handle = {
        color = colors.overlay1,
      },
      handlers = {
        cursor = false,
      },
    }

    require('gitsigns').setup()
    require('scrollbar.handlers.gitsigns').setup()
  end,
}
