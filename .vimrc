" set leader
let mapleader = " "
set rnu
" shortcut for saving
nnoremap <leader>fs :w<CR>
" tabs
set expandtab
set shiftwidth=2
" line wrapping
set tw=80
" 80 character text wrapping for some files
" au BufRead,BufNewFile *.md *.wiki *.txt setlocal textwidth=80
" set textwidth=80
" Spellcheck
set spell spelllang=en_us
nnoremap <leader>sss :set nospell<CR>
" Mess around with vimrc
nnoremap <leader>vrc :tabnew ~/.vimrc<CR>
" save file
nnoremap <leader>fs :w<CR>

" set up for plugins
set nocompatible
filetype plugin on
syntax on
" Plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/fireplace'
"Plug 'junegunn/seoul256.vim'
Plug 'vimwiki/vimwiki'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


