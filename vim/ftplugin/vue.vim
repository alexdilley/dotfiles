" fix syntax highlighting due to multiple languages in single-file components
autocmd BufEnter *.vue syntax sync fromstart
" mitigate performance issues of vim-vue
let g:vue_disable_pre_processors=1
