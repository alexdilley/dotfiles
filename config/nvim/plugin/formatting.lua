vim.pack.add({ 'https://github.com/mhartington/formatter.nvim' })

local defaults = require('formatter.defaults')
local util = require('formatter.util')

-- local prettier = util.copyf(defaults.prettierd)
local eslint = util.copyf(defaults.eslint_d)

require('formatter').setup({
  filetype = {
    javascript = {
      -- prettier,
      eslint,
    },
    svelte = {
      -- prettier,
      eslint,
    },
  },
})

vim.keymap.set('n', '<leader>F', ':Format<CR>')
