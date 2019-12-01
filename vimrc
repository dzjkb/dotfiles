noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
inoremap jj <Esc>
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
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

" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

