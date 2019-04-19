filetype off

set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nanotech/jellybeans.vim'
Plug 'matze/vim-move'
Plug 'eraserhd/parinfer-rust', {'do': 'cargo-build --release'}

call plug#end()

syntax on
filetype indent plugin on

set t_Co=256
set encoding=UTF-8
colorscheme jellybeans


set number
set showtabline=2
set tabstop=2 shiftwidth=2 expandtab
set modeline
set laststatus=2
set list listchars=tab:⩥\ ,trail:∙

"set history=100
"set hidden
"set mouse=a

imap jk <esc>
let mapleader = "\<Space>"
nnoremap <Leader>; :w<CR>
"nmap <Leader><Leader> :bnext<CR>
"nnoremap <Leader>l :bn<cr>
"nnoremap <Leader>h :bp<cr>

"let g:lightline = {
"  \ 'colorscheme': 'jellybeans',
"  \ }

let g:move_key_modifier = 'C'

nnoremap <Leader>p :CtrlP<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
set grepprg=ag\ --nogroup\ --nocolor

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

"let g:sexp_enable_insert_mode_mappings = 0

