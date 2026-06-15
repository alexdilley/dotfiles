vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
})

require('mason').setup()
require('mason-lspconfig').setup()
require('mason-tool-installer').setup({
  ensure_installed = {
    'lua_ls',
    'ts_ls',
    'eslint',
    'svelte',
  },
})

vim.lsp.config(
  'lua_ls',
  {
    settings = {
      Lua = {
        diagnostics = {
          globals = {
            'vim',
          },
        },
      },
    },
  }
)

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function ()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set('n', 'gr', builtin.lsp_references, { buffer = 0 })

    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
  end
})
