return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false

    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }
    -- Move to previous/next
    map('n', '<A-,>', ':BufferPrevious<CR>', opts)
    map('n', '<A-.>', ':BufferNext<CR>', opts)
    -- Re-order to previous/next
    map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
    map('n', '<A->>', ':BufferMoveNext<CR>', opts)
    -- Goto buffer in position...
    map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
    map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
    map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
    map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
    map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
    map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
    map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
    map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
    map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
    map('n', '<A-0>', ':BufferLast<CR>', opts)
    -- Close buffer
    map('n', '<A-w>', ':BufferClose<CR>', opts)
    -- Magic buffer-picking mode
    map('n', '<C-p>', ':BufferPick<CR>', opts)
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
  },
}
