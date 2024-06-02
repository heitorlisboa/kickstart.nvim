-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        -- Hidden items should not be visible
        visible = false,
        -- Disable hiding dot-files
        hide_dotfiles = false,
        -- Disable hiding git-ignored files
        hide_gitignored = false,
        -- Hide some files/directories by name
        hide_by_name = { '.DS_Store', '.git' },
      },
    },
  },
}
