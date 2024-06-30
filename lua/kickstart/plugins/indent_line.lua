return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
    config = function()
      local highlight = {
        'pink',
      }
      local hooks = require 'ibl.hooks'
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'pink', { fg = '#f5c2e7' })
      end)

      -- vim.g.rainbow_delimiters = { highlight = highlight }
      require('ibl').setup {
        scope = {
          highlight = highlight,
          show_start = false,
          show_end = false,
        },
        indent = {
          char = '▏',
        },
      }

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
}
