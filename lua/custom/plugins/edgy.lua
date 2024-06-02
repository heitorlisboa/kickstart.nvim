return {
  'folke/edgy.nvim',
  event = 'VeryLazy',
  init = function()
    -- views can only be fully collapsed with the global statusline
    vim.opt.laststatus = 3
    -- Default splitting will cause your main splits to jump when opening an edgebar.
    -- To prevent this, set `splitkeep` to either `screen` or `topline`.
    vim.opt.splitkeep = 'screen'
  end,
  opts = {
    open_files_do_not_replace_types = { 'terminal', 'Trouble', 'qf', 'edgy' },
    animate = {
      enabled = false,
    },
    left = {
      {
        title = 'Neo-Tree',
        ft = 'neo-tree',
        filter = function(buf)
          return vim.b[buf].neo_tree_source == 'filesystem'
        end,
        size = { width = 0.25 },
      },
    },
  },
}
