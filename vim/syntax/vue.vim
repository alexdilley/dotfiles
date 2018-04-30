syntax include @css syntax/css3.vim
unlet! b:current_syntax
" syntax region vue_css keepend start=/<style\_[^>]*>/ end="</style>"me=s-1 contains=@css fold
