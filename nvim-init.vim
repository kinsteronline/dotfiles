filetype off
set nocompatible

set t_Co=256
set encoding=UTF-8
set termguicolors

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'

Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/vim-emoji'
Plug 'ryanoasis/vim-devicons'

Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'


Plug 'tpope/vim-commentary'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

colorscheme jellybeans

syntax on
filetype plugin indent on

set number
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

nnoremap <Leader>l :bn<cr>
nnoremap <Leader>h :bp<cr>

set grepprg=ag\ --nogroup\ --nocolor
nnoremap <Leader>p :CtrlP<cr>
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" let g:ctrlp_use_caching = 0

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component_function': {
      \     'modified': 'LightlineModifiedWithEmoji'
      \ },
      \ }

function! LightlineModifiedWithEmoji()
  let modified = &modified ? emoji#for('wrench') : ''
  return modified
endfunction

let g:javascript_conceal_function = '𝒇'
let g:javascript_conceal_arrow_function = '➡︎ '
set conceallevel=1

