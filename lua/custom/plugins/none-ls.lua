return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  opts = function()
    local null_ls = require 'null-ls'
    return {
      sources = {
        -- Needs "prettierd" installed
        null_ls.builtins.formatting.prettierd,
        -- Needs "eslint_d" installed
        require('none-ls.diagnostics.eslint_d'),
        require('none-ls.code_actions.eslint_d'),
        -- Probably needs "stylua" installed, but I don't care enough to test
        null_ls.builtins.formatting.stylua,
      },
    }
  end,
}
