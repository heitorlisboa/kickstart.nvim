return {
  'rcarriga/nvim-notify',
  opts = {
    background_colour = '#000000',
  },
  keys = {
    {
      '<leader>un',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Dismiss All Notifications',
    },
  },
}
