command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !exists('*minpac#init')
  finish
endif

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

" universal set of defaults
call minpac#add('tpope/vim-sensible')
" syntaxes
call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('othree/html5.vim')
call minpac#add('mustache/vim-mustache-handlebars')
call minpac#add('othree/yajs.vim')
call minpac#add('burner/vim-svelte')
" call minpac#add('leafgarland/typescript-vim')
" call minpac#add('Quramy/tsuquyomi')
call minpac#add('posva/vim-vue')
" colorschemes
" call minpac#add('chriskempson/base16-vim')
" call minpac#add('altercation/vim-colors-solarized')
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('morhetz/gruvbox')
call minpac#add('lifepillar/vim-gruvbox8')
" statusline
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
" sessions
call minpac#add('tpope/vim-obsession')
" file system explorer
call minpac#add('scrooloose/nerdtree')
" fuzzy file finder
call minpac#add('ctrlpvim/ctrlp.vim')
" tree-based undo history
call minpac#add('sjl/gundo.vim')
" commenting, with embedded syntax support
call minpac#add('tomtom/tcomment_vim')
" quoting/parenthesizing
call minpac#add('tpope/vim-surround')
" key mappings
call minpac#add('tpope/vim-unimpaired')
" motions
call minpac#add('easymotion/vim-easymotion')
" snippets
call minpac#add('SirVer/ultisnips')
" visual yank
call minpac#add('machakann/vim-highlightedyank')
" linting/formatting
call minpac#add('w0rp/ale')
call minpac#add('prettier/vim-prettier')
" completion
" call minpac#add('roxma/nvim-yarp')
" call minpac#add('roxma/vim-hug-neovim-rpc')
" call minpac#add('Shougo/deoplete.nvim')
" call minpac#add('mhartington/nvim-typescript', {'do': './install.sh'})
" Git
call minpac#add('tpope/vim-fugitive')
call minpac#add('airblade/vim-gitgutter')
