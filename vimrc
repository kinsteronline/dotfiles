call pathogen#infect()

filetype off
syntax on
filetype indent plugin on

set number
set showtabline=2
set ts=2

set modeline

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
