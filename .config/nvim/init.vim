set nocompatible
filetype on
syntax on
set number relativenumber
set incsearch
set hlsearch
set wildmenu
set wildmode=list:longest

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme onedark
