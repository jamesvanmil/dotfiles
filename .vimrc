set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()

syntax on
filetype plugin indent on
set number
set wrap
set breakindent
set showbreak=\ \ 
set linebreak
set tabstop=2
set expandtab
set shiftwidth=2
set autochdir
set tags=tags;/
let macvim_skip_colorscheme = 1
colorscheme alduin

" airline stuff
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
""""""

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
""""""

au BufRead,BufNewFile *.md set filetype=markdown

""""""

" Change leader
let mapleader = "\<Space>"

" jk to throw you into normal mode from insert mode
inoremap jk <esc>

" leader jk to switch buffers
noremap <Leader>j :bn<CR>
noremap <Leader>k :bp<CR>

" leader x to close buffers
noremap <Leader>x :bd<CR>

nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>
