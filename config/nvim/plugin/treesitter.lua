-- requires tree-sitter-cli to be installed

local hooks = function (event)
  local name, kind = event.data.spec.name, event.data.kind

  if name == 'nvim-treesitter' and (kind == 'update') then
    if not event.data.active then
      vim.cmd.packadd('nvim-treesitter')
    end

    vim.cmd('TSUpdate')
  end
end
vim.api.nvim_create_autocmd('PackChanged', { callback = hooks })

vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

require('nvim-treesitter').install({
  'vim',
  'lua',
  'markdown',
  'html',
  'glimmer',
  'css',
  'javascript',
  'svelte',
  'json',
  'yaml',
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function (args)
    local buf = args.buf
    local ft = vim.bo[buf].filetype
    local lang = vim.treesitter.language.get_lang(ft)

    if not lang then
      return
    end

    pcall(vim.treesitter.start, buf, lang)
  end,
})
