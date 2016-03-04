execute pathogen#infect()

colorscheme Tomorrow-Night-Eighties

filetype off
syntax on
filetype indent plugin on

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
nnoremap <Leader>p :CtrlP<CR>
nmap <Leader><Leader> :bnext<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

