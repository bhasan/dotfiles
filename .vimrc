source /apollo/env/envImprovement/var/vimrc
set foldcolumn=0
set splitbelow
set splitright

set textwidth=0
set wrapmargin=0

" Set line numbers
" Toggle with set nu! rnu!
set number relativenumber

syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')
" Syntax checker
Plug 'vim-syntastic/syntastic'
" File Tree
Plug 'scrooloose/nerdtree'
" fzf common VIM commands
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" auto insert quote or matching parenthesis
" Plug 'jiangmiao/auto-pairs'
" Color schemes
Plug 'junegunn/seoul256.vim'
" Info bar
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call plug#end()

" NERDTree. Close vim if only NERDTree window is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 234
colo seoul256

" Manual mappings
" Remaps
nnoremap <Leader><Enter> o<Esc>

" NERDTree
nnoremap :ntc :NERDTreeClose
nnoremap :nt :NERDTree
" FZF
nnoremap :fzf :FZF
nnoremap <Leader>f :FZF<space>

