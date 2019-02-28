filetype off
syntax on
filetype indent plugin on

set t_Co=256
set encoding=UTF-8

set number
set showtabline=2
set tabstop=2 shiftwidth=2 expandtab
set modeline
set nocompatible
set hidden
set history=100
set laststatus=2

imap jk <esc>

let mapleader = "\<Space>"
nnoremap <Leader>; :w<CR>
nmap <Leader><Leader> :bnext<CR>
nnoremap <Leader>l :bn<cr>
nnoremap <Leader>h :bp<cr>

let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ }

let g:move_key_modifier = 'C'

