return {
  'fedepujol/move.nvim',
  -- There's 4 types of motions: line, block, word and char. The only one that
  -- is not enabled by default is char, but I also don't want to enable word, so
  -- I'm disabling it here.
  opts = {
    word = {
      enable = false,
    },
  },
  init = function()
    vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', { noremap = true, silent = true, desc = 'Move line down' })
    vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', { noremap = true, silent = true, desc = 'Move line up' })
    vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', { noremap = true, silent = true, desc = 'Move block down' })
    vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', { noremap = true, silent = true, desc = 'Move block up' })
  end,
}
