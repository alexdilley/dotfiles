command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !exists('*minpac#init')
  finish
endif

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('w0rp/ale')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('sjl/gundo.vim')
call minpac#add('othree/html5.vim')
call minpac#add('scrooloose/nerdtree')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('tpope/vim-commentary')
call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('tpope/vim-fugitive')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('elzr/vim-json')
call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-sensible')
call minpac#add('cakebaker/scss-syntax.vim')
call minpac#add('tpope/vim-surround')
call minpac#add('posva/vim-vue')
call minpac#add('othree/yajs.vim')

" colorschemes
call minpac#add('mhartington/oceanic-next')
