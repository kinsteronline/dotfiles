filetype off

set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nanotech/jellybeans.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'matze/vim-move'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'

" Clojure stuff
Plug 'tpope/vim-fireplace'
Plug 'luochen1990/rainbow'
Plug 'eraserhd/parinfer-rust', {'do':
        \ 'cd ~/.local/share/nvim/plugged/parinfer-rust; cargo-build --release'}

Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plug 'Olical/conjure', { 'tag': 'v1.1.0', 'do': 'bin/compile'  }

Plug 'janet-lang/janet.vim'

call plug#end()

syntax on
filetype indent plugin on

set t_Co=256
colorscheme jellybeans

set number
set cursorline
set showtabline=2
set tabstop=2 shiftwidth=2 expandtab
set modeline
set laststatus=2
set list listchars=tab:⩥\ ,trail:∙

set noshowmode

imap jk <esc>

let mapleader = "\<Space>"
let maplocalleader = ","

nnoremap <Leader>; :w<CR>
nnoremap <Leader>l :bn<cr>
nnoremap <Leader>h :bp<cr>
nmap <Leader><Leader> :bnext<CR>

nnoremap <silent> <Up> :res -2<CR>
nnoremap <silent> <Down> :res +2<CR>
nnoremap <silent> <Left> :vertical resize -3<CR>
nnoremap <silent> <Right> :vertical resize +3<CR>

let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ }

let g:move_key_modifier = 'C'

nnoremap <Leader>p :CtrlP<CR>
" see ~/.agignore
let g:ctrlp_custom_ignore = '\v[\/](node_modules)|(\.git)$'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
set grepprg=ag\ --nogroup\ --nocolor

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

let g:rainbow_active = 1

"let g:conjure_log_direction = "horizontal"

