return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = 'catppuccin',
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
    },

    -- sections = {},
    --
    -- winbar = {
    --   lualine_a = { 'mode' },
    --   lualine_b = { 'branch', 'diff', 'diagnostics' },
    --   lualine_c = { 'filename' },
    --   lualine_x = { 'encoding', 'fileformat', 'filetype' },
    --   lualine_y = { 'progress' },
    --   lualine_z = { 'location' }
    -- },

    -- winbar = {
    --   lualine_a = { 'mode' },
    --   lualine_b = { 'branch' },
    --   lualine_c = { 'diff' },
    --   lualine_d = { 'filename' },
    --   lualine_o = { 'encoding' },
    --   lualine_w = { 'encoding' },
    --   lualine_x = { 'mode' },
    --   lualine_y = { 'progress' },
    --   lualine_z = { 'location' },
    -- },
    extensions = { 'nvim-tree' }
  },
}
