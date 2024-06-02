return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {},
  init = function()
    vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', { desc = '[T]oggle [T]erm' })
  end,
}
