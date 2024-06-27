return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
  },
  config = function()
    vim.keymap.set('n', '<leader>f', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle Nvim-Tree' })
    vim.keymap.set('n', '<leader>gs', ':Neogit<cr>', { desc = 'Open Neogit' })
    require('neogit').setup {}
  end,
}
