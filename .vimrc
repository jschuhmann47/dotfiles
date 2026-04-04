let mapleader=" "

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set title

" Plugins
call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'chrisbra/Colorizer'

call plug#end()

set number
set relativenumber
set showcmd
set hls
set incsearch
set wildmode=longest,list,full

set ignorecase
set showmatch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set cursorline
set laststatus=0

nnoremap <silent> <C-L> :noh<CR>

if (has("termguicolors"))
  set termguicolors
endif

colorscheme onedark
let g:airline_theme='onedark'

" map <leader>n :NERDTreeToggle<CR>

