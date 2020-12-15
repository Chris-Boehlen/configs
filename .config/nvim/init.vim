" Fish doesn't play all that well with others
set shell=/bin/bash
let mapleader = "\<Space>"

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'chriskempson/base16-vim'
call plug#end()

" Editor settings
filetype plugin indent on
set autoindent
set timeoutlen=300
set encoding=utf-8
set noshowmode
set hidden
set nowrap
set nojoinspaces

" Search results centered
noremap <silent> n nzz
noremap <silent> N Nzz
noremap <silent> * *zz
noremap <silent> # #zz
noremap <silent> g* g*zz

" Sane splits
set splitright
set splitbelow

" Permanent undo
set undodir=~/.vimdid
set undofile

"Editor settings
set guioptions-=T
set vb t_vb= 
set backspace=2
set nofoldenable
set ttyfast
set synmaxcol=500
set laststatus=2
set number
set relativenumber
set colorcolumn=80
set showcmd
set mouse=a
set shortmess+=c

" Colors
set background=dark
set termguicolors
let base16colorspace=256
colorscheme base16-gruvbox-dark-hard
syntax on
hi Normal ctermbg=NONE

" Keybindings
nmap <leader>w :w<CR>

" ; as :
nnoremap ; :

" Delete without yank
vnoremap <leader>p "_dP

" Ctrl+j and Ctrl+k as Esc
" Ctrl-j is a little awkward unfortunately:
" https://github.com/neovim/neovim/issues/5916
" So we also map Ctrl+k
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
snoremap <C-j> <Esc>
xnoremap <C-j> <Esc>
cnoremap <C-j> <C-c>
onoremap <C-j> <Esc>
lnoremap <C-j> <Esc>
tnoremap <C-j> <Esc>

nnoremap <C-k> <Esc>
inoremap <C-k> <Esc>
vnoremap <C-k> <Esc>
snoremap <C-k> <Esc>
xnoremap <C-k> <Esc>
cnoremap <C-k> <C-c>
onoremap <C-k> <Esc>
lnoremap <C-k> <Esc>
tnoremap <C-k> <Esc>

" Ctrl+h to stop searching
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

map H ^
map L $

nnoremap j gj
nnoremap k gk
