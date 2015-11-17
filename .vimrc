
" Plugins
" {{{
call plug#begin('~/.vim/plugged')

Plug 'burnettk/vim-angular'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'jnurmine/Zenburn'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

call plug#end()
" }}}

" Sane defaults
" {{{
let mapleader = ','
set nocompatible
syntax enable
au FileType vim set fdm=marker
set relativenumber
autocmd FileType vim set fdm=marker
set smarttab
set cindent
set t_Co=256
filetype plugin on
set hlsearch
set fdm=syntax
set clipboard=unnamed                   " Use system clipboard
" }}}

" Plugin settings
" {{{
let b:javascript_fold = 1
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|dest\|public'
" }}}

" Key mapping
" {{{
nnoremap <space> za:noh<return>
nnoremap <space> :noh<return>za
nnoremap <backspace> _d0i<backspace><space><esc>==
nnoremap <return> I<return><esc>$
nnoremap <c-o> :e<space>.<return>
nnoremap - zOddkP
nnoremap + zOddp
inoremap <Leader>sout System.out.println();<esc>==$hi
inoremap <Leader>psvm public static void main(String[] args) {<esc>==A<return>}<esc>O
inoremap <Leader>scwait new<space>Scanner(System.in).nextLine();
" }}}

" Indent
" {{{
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
" }}}

" Folding
" {{{
au FileType vim setlocal fdm=marker
au FileType JavaScript setlocal fdm=syntax
" }}}

" Colors
colorscheme zenburn
hi Conceal ctermfg=black ctermbg=white cterm=bold
