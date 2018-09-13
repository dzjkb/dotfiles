noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
inoremap jj <Esc>
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
" Plug 'tomlion/vim-solidity'
" Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
" Plug 'davidhalter/jedi-vim'
" Plug 'valloric/youcompleteme'

call plug#end()

set smartindent
set expandtab
set shiftwidth=4
set tabstop=4

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
