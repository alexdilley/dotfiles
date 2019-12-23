" fix syntax highlighting due to multiple languages in single-file components
autocmd BufEnter *.svelte syntax sync fromstart
let b:ale_linter_aliases=['css', 'javascript']
let b:ale_linters=['eslint', 'stylelint']
" mitigate performance issues of vim-svelte
let g:svelte_disable_pre_processors=1
let g:tcomment#filetype#guess_svelte='html'
