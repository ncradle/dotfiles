" encode setting
set encoding=utf-8

set number
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

colorscheme dracula
