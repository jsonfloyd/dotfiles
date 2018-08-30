" -------------------------------------------------------------------
" Basic
" -------------------------------------------------------------------

set nocompatible
set noshowmatch
set confirm
set laststatus=2
set showcmd
set nowrap
set hidden
set visualbell
set title
set lazyredraw
set history=256
set whichwrap=b,<,>,[,],l,h
set shortmess+=tToOI
set clipboard+=unnamedplus
set completeopt+=noinsert,noselect
set autochdir
set tpm=20
set noex
set autoread
set ttyfast
set formatoptions+=ro
set synmaxcol=128
set nostartofline
set directory=$HOME/.vim/tmp
set wildmenu
set signcolumn=yes
syntax on

set wcm=<Tab>
let mapleader = "\\"

" Ignoring files for wildmenu
set wildignore+=*.o,*.pyc,*.jpg,*.png,*.gif,*.db,*.obj,*.manifest,*.zip,.git,.svn

" -------------------------------------------------------------------
" Display line numbers
" -------------------------------------------------------------------

set nu
set rnu

" -------------------------------------------------------------------
" Scrolling limits
" -------------------------------------------------------------------

set scrolloff=2
set sidescrolloff=2

" -------------------------------------------------------------------
" Split the window
" -------------------------------------------------------------------

set splitright
set splitbelow

" -------------------------------------------------------------------
" File types
" -------------------------------------------------------------------

filetype on
filetype plugin indent on

" -------------------------------------------------------------------
" Mouse control
" -------------------------------------------------------------------

set mouse=a
set mousehide

" -------------------------------------------------------------------
" Encoding
" -------------------------------------------------------------------

set encoding=utf-8
set termencoding=utf-8
set fileformat=unix
set ffs=unix,dos,mac
set fileencodings=utf-8,koi8-r,cp1251,cp866

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" -------------------------------------------------------------------
" Indents
" -------------------------------------------------------------------

set shiftwidth=4
set tabstop=4
set softtabstop=4
set pastetoggle=
set autoindent
set expandtab
set smartindent

" For specified file types, disables the replacement of tabs with spaces and changes the width of the indentation
au FileType crontab,fstab,make set noexpandtab tabstop=8 shiftwidth=8

" -------------------------------------------------------------------
" Search
" -------------------------------------------------------------------

set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set gdefault

" -------------------------------------------------------------------
" Folding blocks of text
" -------------------------------------------------------------------

set foldenable
set foldmethod=syntax
set foldnestmax=3
set foldcolumn=0
set foldlevel=3

" -------------------------------------------------------------------
" Cursor highlighting
" -------------------------------------------------------------------

set cursorline
hi CursorLine cterm=NONE ctermbg=black cterm=bold

" -------------------------------------------------------------------
" Display hidden characters
" -------------------------------------------------------------------

set list
set listchars=tab:▸\ ,trail:•,extends:→,precedes:←,space:·

hi NonText ctermfg=241
hi SpecialKey ctermfg=241

" -------------------------------------------------------------------
" History of changes
" -------------------------------------------------------------------

set undofile
set undolevels=1024
set undodir=$HOME/.vim/undo/

" -------------------------------------------------------------------
" Creating backup and swap files
" -------------------------------------------------------------------

set nobackup
set noswapfile

" -------------------------------------------------------------------
" Color scheme
" -------------------------------------------------------------------

"set t_Co=256
"set termguicolors

syntax enable
colorscheme onedark

" Change default theme colors
hi SpecialKey   ctermfg=8
hi NonText      ctermfg=8
hi LineNr       ctermfg=8
hi Identifier   ctermfg=9
hi Keyword      ctermfg=9
hi Comment      ctermfg=7
hi Normal       ctermfg=15

" -------------------------------------------------------------------
" Spellchecking
" -------------------------------------------------------------------

set spell spelllang=ru,en
set nospell

" -------------------------------------------------------------------
" Zeroing delay for single keys
" -------------------------------------------------------------------
hi Normal ctermbg=NONE
set notimeout ttimeout ttimeoutlen=0