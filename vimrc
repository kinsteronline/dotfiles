filetype off
syntax on
filetype indent plugin on

set t_Co=256
set encoding=UTF-8

colorscheme jellybeans

set number
set showtabline=2
set tabstop=2 shiftwidth=2 expandtab
set modeline
set nocompatible
set history=100
set laststatus=2
set hidden

set mouse=a

set list listchars=tab:⩥\ ,trail:∙

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

nnoremap <Leader>p :CtrlP<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

set grepprg=ag\ --nogroup\ --nocolor

