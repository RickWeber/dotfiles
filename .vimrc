" My vimrc
set nocompatible
filetype plugin on
syntax on
" leader
let mapleader = ' '
" line numbering
set rnu
set number
set expandtab
set shiftwidth=2
" Line wrapping
set tw=80
" set runtimepath=~/.vim/bundle/start
" spellcheck
set spell spelllang=en_us
" turn that shit off
nnoremap <leader>sss :set nospell<CR>
" open up vimrc
nnoremap <leader>vrc :tabnew ~/.vimrc<CR>
" restart vimrc
nmap <leader>vrr :source ~/.vimrc<CR>
" open up todo inbox
nnoremap <leader>todo :tabnew ~/vimwiki/todo/inbox.wiki<CR>
" save file
nnoremap <leader>fs :w<CR>
" spell check
nnoremap <leader>sc z=
nnoremap <leader>sn ]s
nnoremap <leader>sp [s
" maximizer
noremap <leader>mmm :MaximizerToggle<CR>
" switch between splits
noremap <leader>w <C-w><C-w>
vnoremap > >gv
vnoremap < <gv
" skeleton files
" New diary entry in vimwiki
autocmd BufNewFile ~/Dropbox/vimwiki/diary/*.wiki 0r ~/.dotfiles/skeletons/diary.txt
" Brain dump skeleton 
autocmd BufNewFile ~/Dropbox/vimwiki/diary/braindump/*.wiki 0r ~/.dotfiles/skeletons/braindump.txt
" new scratch buffer
noremap <leader>bsm :tabnew /tmp/scratch.md<CR>
noremap <leader>bsp :tabnew /tmp/scratch.py<CR>
noremap <leader>bsr :tabnew /tmp/scratch.R<CR>
noremap <leader>bsj :tabnew /tmp/scratch.js<CR>
noremap <leader>bss :tabnew /tmp/scratch.sh<CR>
noremap <leader>bsc :tabnew /tmp/scratch.clj<CR>


" vim-plug
call plug#begin('~/.vim/plugged')
" vimwiki
Plug 'vimwiki/vimwiki'
Plug 'szw/vim-maximizer'
Plug 'shime/vim-livedown'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'tpope/vim-sensible'
"Plug 'tpope/fireplace'
call plug#end()
