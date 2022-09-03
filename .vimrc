set nocompatible


" let g:airline_powerline_fonts=1
" 
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" 
" " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.colnr = ' :'
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ' :'
" let g:airline_symbols.maxlinenr = '☰ '
" let g:airline_symbols.dirty='⚡'
" 
" Leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

"""" Basic Behavior

set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping

" Colorscheme
syntax on

" Change esc to kj
inoremap kj <Esc>

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Gestion de la surbrillance
nnoremap <f8> :set hlsearch!\|set hlsearch?<cr>

" Copy and paste to clipboard
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+p

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

" Navigating in windows 
set splitbelow splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" change two split windows from vert to horiz or horiz to vert 
map <Leader>th <C-w>t<C-w>h
map <Leader>tk <C-w>t<C-w>k

nnoremap <silent> <Leader>s :split<CR>
nnoremap <silent> <Leader>v :vsplit<CR>
nnoremap <silent> <Leader>q :close<CR>
"resize pane <C-E> to use it
Plug 'simeji/winresizer'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
" type ColorHighlight to run it
Plug 'morhetz/gruvbox'
Plug 'chrisbra/colorizer'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
 
call plug#end()

colorscheme nord
set t_Co=256

" let g:airline_solarized_bg='dark'
