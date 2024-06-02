return {
  'sindrets/diffview.nvim',
  opts = {
    enhanced_diff_hl = true,
  },
  init = function()
    -- Use diagonal lines in place of deleted lines in diff-mode
    vim.opt.fillchars:append { diff = '╱' }
  end,
}
