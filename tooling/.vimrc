set shiftwidth=4
set tabstop=4
set expandtab
set autowrite

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" Pymode settings
let g:pymode_options = 1
let g:pymode_rope = 1
let g:pymode_lint_on_fly = 1
let g:pymode_folding = 1
set completeopt=menu,noinsert,preview

" Auto reformat Python files with Black on writes
autocmd BufWritePre *.py execute ':Black'
