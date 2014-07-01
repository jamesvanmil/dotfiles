syntax on
set number
set nowrap
set tabstop=2
set expandtab
set shiftwidth=2
set autochdir
set tags=tags;/
colorscheme vividchalk
let macvim_skip_colorscheme = 1

au BufRead,BufNewFile *.md set filetype=markdown

" jk to throw you into normal mode from insert mode
inoremap jk <esc>
" Disable arrow keys (hardcore)
map  <up>    <nop>
imap <up>    <nop>
map  <down>  <nop>
imap <down>  <nop>
map  <left>  <nop>
imap <left>  <nop>
map  <right> <nop>
imap <right> <nop>
