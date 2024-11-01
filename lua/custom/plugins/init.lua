-- You can add your own plugins here or in other files in this directory!
-- I promise not to create any merge conflicts in this directory :)

return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesitter-context').setup()
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      -- Move to previous/next
      map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
      map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
      -- Re-order to previous/next
      map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
      map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
      -- Goto buffer in position...
      map('n', '<A-q>', '<Cmd>BufferGoto 1<CR>', opts)
      map('n', '<A-w>', '<Cmd>BufferGoto 2<CR>', opts)
      map('n', '<A-e>', '<Cmd>BufferGoto 3<CR>', opts)
      map('n', '€', '<Cmd>BufferGoto 3<CR>', opts)
      map('n', '<A-r>', '<Cmd>BufferGoto 4<CR>', opts)
      map('n', '<A-t>', '<Cmd>BufferGoto 5<CR>', opts)
      map('n', '<A-y>', '<Cmd>BufferGoto 6<CR>', opts)
      map('n', '<A-u>', '<Cmd>BufferGoto 7<CR>', opts)
      map('n', '<A-i>', '<Cmd>BufferGoto 8<CR>', opts)
      map('n', '<A-o>', '<Cmd>BufferGoto 9<CR>', opts)
      -- Pin/unpin buffer
      map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
      -- Goto pinned/unpinned buffer
      --                 :BufferGotoPinned
      --                 :BufferGotoUnpinned
      -- Wipeout buffer
      --                 :BufferWipeout
      -- Close commands
      --                 :BufferCloseAllButCurrent
      --                 :BufferCloseAllButPinned
      --                 :BufferCloseAllButCurrentOrPinned
      --                 :BufferCloseBuffersLeft
      --                 :BufferCloseBuffersRight
      map('n', '<A-c>c', '<Cmd>BufferClose<CR>', opts)
      map('n', '<A-c>a', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)
      map('n', '<A-c>l', '<Cmd>BufferCloseBuffersLeft<CR>', opts)
      map('n', '<A-c>r', '<Cmd>BufferCloseBuffersRight<CR>', opts)
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
