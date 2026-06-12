local hooks = function (event)
  local name, kind = event.data.spec.name, event.data.kind

  if name == 'telescope-fzf-native.nvim' and (kind == 'install' or kind == 'update') then
    vim.system({ 'make' }, { cwd = event.data.path }):wait()
  end
end
vim.api.nvim_create_autocmd('PackChanged', { callback = hooks })

vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-telescope/telescope.nvim',
})

local builtin = require('telescope.builtin')

require('telescope').setup {
  pickers = {
    find_files = {
      theme = 'ivy',
      find_command = { 'rg', '--files', '--color=never', '--hidden', '--glob=!**/.git/*' }
    }
  },
  extensions = {
    fzf = {}
  }
}
require('telescope').load_extension('fzf')

vim.keymap.set('n', '<leader>fd', builtin.find_files)
vim.keymap.set('n', '<leader>fw', builtin.grep_string)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
