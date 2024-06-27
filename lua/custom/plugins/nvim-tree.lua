-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
      },
      view = {
        side = 'right',
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    }
    vim.keymap.set('n', '<leader>f', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle Nvim-Tree' })
  end,
}