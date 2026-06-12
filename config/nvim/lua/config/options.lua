vim.g.mapleader = ' '

vim.opt.termguicolors = true

vim.opt.signcolumn = 'yes'
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

-- ignore case in search pattern
vim.opt.ignorecase = true
-- ...override if pattern contains uppercase characters
vim.opt.smartcase = true

-- prefer undo history over vim backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true
