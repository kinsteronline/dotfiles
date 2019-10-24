filetype off
set nocompatible

set t_Co=256
set encoding=UTF-8
set termguicolors

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
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/vim-emoji'
Plug 'Yggdroot/indentLine'

" Clojure stuff
Plug 'tpope/vim-fireplace'
Plug 'luochen1990/rainbow'
Plug 'eraserhd/parinfer-rust', {'do':
        \ 'cd ~/.local/share/nvim/plugged/parinfer-rust; cargo-build --release'}

Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plug 'Olical/conjure', { 'tag': 'v1.1.0', 'do': 'bin/compile'  }

" Janet :)
Plug 'janet-lang/janet.vim'

" JS
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

colorscheme jellybeans

syntax on
filetype plugin indent on

set number
set cursorline
set showtabline=2
set tabstop=2 shiftwidth=2 expandtab
set modeline
set laststatus=2
set list listchars=tab:⩥\ ,trail:∙

set noshowmode
set hidden
set history=100

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

let g:move_key_modifier = 'C'

set grepprg=ag\ --nogroup\ --nocolor

nnoremap <Leader>p :CtrlP<CR>
" see ~/.agignore
let g:ctrlp_custom_ignore = '\v[\/](node_modules)|(\.git)$'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" let g:ctrlp_use_caching = 0

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component_function': {
      \     'modified': 'LightlineModifiedWithEmoji'
      \  },
      \ }

function! LightlineModifiedWithEmoji()
  let modified = &modified ? emoji#for('wrench') : ''
  return modified
endfunction

let g:javascript_conceal_function = '𝒇'
let g:javascript_conceal_arrow_function = '➡︎ '
set conceallevel=1

"let g:conjure_log_direction = "horizontal"

