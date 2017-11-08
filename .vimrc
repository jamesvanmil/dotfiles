set nocompatible              " be iMproved, required
filetype off                  " required

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'IN3D/vim-raml'
Plugin 'unblevable/quick-scope'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ngmy/vim-rubocop'
Plugin 'thoughtbot/vim-rspec'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
filetype plugin indent on
set number
set relativenumber
set wrap
set showbreak=\ \ 
set linebreak
set tabstop=2
set expandtab
set shiftwidth=2
set autochdir
set tags=tags;/
let macvim_skip_colorscheme = 1
colorscheme vividchalk
set backspace=indent,eol,start

" airline stuff
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
""""""

au BufRead,BufNewFile *.md set filetype=markdown

" run files through pandoc to open
autocmd BufReadPost *.doc,*.docx,*.rtf,*.odp,*.odt, silent %!pandoc "%" -tplain -o /dev/stdout
""""""

" Change leader
let mapleader = "\<Space>"

" jk to throw you into normal mode from insert mode
inoremap jk <esc>

" leader ls to list open buffers
noremap <Leader>ls :ls<CR>

" leader jk to switch buffers
noremap <Leader>j :bn<CR>
noremap <Leader>k :bp<CR>

" leader x to close buffers
noremap <Leader>x :bd<CR>

" leader space to write
noremap <Leader><Space> :w<CR>

" leader o to open the file
nnoremap <leader>o :!open %<Enter><Enter>

nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>
