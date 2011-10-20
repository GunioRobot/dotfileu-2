" load vim-pathogen
source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" solarized
syntax on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" general
filetype on
filetype indent on
filetype plugin on

" various options
set antialias
set autoindent
set autoread
set backspace=2
set cmdheight=2
set copyindent
set encoding=utf8
set endofline
set esckeys
set expandtab
set ffs=unix,dos,mac
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set formatoptions=tcrql
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set more
set mouse=a
set mousefocus
set mousehide
set nobackup
set nocompatible
set nohlsearch
set noswapfile
set nowb
set number
set numberwidth=5
set paste
set preserveindent
set ruler
set scrolloff=8
set shellslash
set shiftwidth=2
set showmatch
set showmode
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set textwidth=80
set title
set ttyfast
set wildmenu
set wrap
set wrapscan

" gui options
if has("gui_running")
  set clipboard
  set columns=100
  set guicursor
  set guifont=Inconsolata:h13
  set guioptions-=T
  set highlight
  set keymodel=
  set lines=64
  set mouseshape
  set selectmode=mouse,key,cmd
  set showtabline=2
endif

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

