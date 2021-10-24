" My vimrc
" leader
let mapleader = ' '
" line numbering
set rnu
set expandtab
set shiftwidth=2
" set runtimepath=~/.vim/bundle/start
" spellcheck
set spell spelllang=en_us
" turn that shit off
nnoremap <leader>sss :set nospell<CR>
" open up vimrc
nnoremap <leader>vrc :tabnew ~/.vimrc<CR>
" save file
nnoremap <leader>fs :w<CR>
" spell check
nnoremap <leader>sc z=
nnoremap <leader>sn ]s
nnoremap <leader>sp [s
" maximizer
noremap <leader>mmm :MaximizerToggle<CR>
" skeleton files
" New diary entry in vimwiki
autocmd BufNewFile *\d\{4\}-\d\{2\}-\d\{2\}.wiki 0r ~/.dotfiles/skeletons/diary.txt
" I still don't have that regex sorted out...

set nocompatible
filetype plugin on
syntax on

" Line wrapping
set tw=80

" vim-plug
call plug#begin('~/.vim/plugged')
" vimwiki
Plug 'vimwiki/vimwiki'
Plug 'szw/vim-maximizer'
"Plug 'tpope/vim-sensible'
"Plug 'tpope/fireplace'
call plug#end()
