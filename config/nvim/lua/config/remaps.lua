-- window navigation
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-h>', '<C-w>h')

-- move selected lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- keep centered
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- swallow replaced selection
vim.keymap.set('x', '<leader>p', '\"_dP')

-- system clipboard parity
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>Y', '\"+Y')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'highlight on yank',
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  callback = function ()
    vim.highlight.on_yank()
  end,
})

-- lsp
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)
