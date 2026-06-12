vim.pack.add({
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim',
})

require('lualine').setup {
  extensions = {
    'oil',
    'quickfix',
  },
  sections = {
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        path = 1,
      },
    },
    lualine_x = {},
  },
}

vim.opt.showmode = false
