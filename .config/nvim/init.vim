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
set clipboard+=unnamedplus

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim',{'as':'dracula'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'antoinemadec/FixCursorHold.nvim' "neef for fern.vim
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'vim-scripts/a.vim'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
call plug#end()

colorscheme dracula

runtime ./coc.vim
runtime ./lualine.vim
runtime ./FixCursorHold.vim
runtime ./fern.vim
runtime ./a.vim
