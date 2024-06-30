return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin-mocha',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
    }
  end,
}
