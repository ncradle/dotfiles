set encoding=utf-8      " encode setting
set number              " set row number
set cursorline          " set cursor line
set expandtab           " space is used instead of tab
set tabstop=2           " tab stop
set shiftwidth=2        " tab stop 2
set ignorecase          " ignore word case(A or a)
set autoindent          " autoindent
" set lcs=tab:>.,trail:_,extends:\
set list
let mapleader = "\<Space>"

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

colorscheme dracula

runtime ./coc.vim
