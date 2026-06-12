vim.pack.add({
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/stevearc/oil.nvim',
})

require('oil').setup({
  keymaps = {
    [ '<C-h>' ] = false,
  },
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
  },
})

require('nvim-web-devicons').set_icon({
  mjml = {
    icon = "",
    color = "#A04F1D",
    cterm_color = "130",
    name = 'Mjml',
  },
})

vim.keymap.set('n', '-', '<CMD>Oil<CR>')
