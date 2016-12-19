let mapleader = ","
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin on
set number
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
let g:vimwiki_list = [{'path': '~/notebook/'}]
let g:vimwiki_list = [{'path': '~/notebook/', 'syntax': 'markdown', 'ext': '.md'}]
