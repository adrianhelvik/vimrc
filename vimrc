" Plugins
" {{{
call plug#begin('~/.vim/plugged')

Plug 'bronson/vim-trailing-whitespace'
Plug 'burnettk/vim-angular'
Plug 'digitaltoad/vim-jade'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'jceb/vim-orgmode'
Plug 'jnurmine/Zenburn'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
" Plug 'kien/ctrlp.vim'
Plug 'wincent/command-t'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vitaly/vim-syntastic-coffee'
Plug 'wikitopian/hardmode'
Plug 'wlangstroth/vim-racket'
Plug 'wavded/vim-stylus'

call plug#end()
" }}}

" Sane defaults
" {{{
let mapleader = 'ø'
set nocompatible
syntax enable
au FileType vim set fdm=marker
set relativenumber
set smarttab
set cindent
set t_Co=256
filetype plugin on
set hlsearch
set fdm=syntax
set clipboard=unnamed                   " Use system clipboard
set mouse=a                             " Enable scrolling
" }}}

" Plugin settings
" {{{
let g:syntastic_typescript_tsc_args = '--target ES5 --enableExperimentalDecorators'
let b:javascript_fold = 1
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|dest\|public'
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" command-t
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,bower_components,node_modules,public,dest
"if &term =~ "xterm" || &term =~ "screen"
    "let g:CommandTCancelMap = ['<ESC>', '<C-c>']
"endif

" }}}

" Key mapping
" {{{

" Headers
nnoremap <Leader>h1 O/*<return>*<space><esc>==k==j74A-<esc>A<return>*<space><return>*<space><esc>74A-<esc>A<return>*/<esc>kkA

" Misc.
nnoremap <space> za:noh<return>
nnoremap <space> :noh<return>za
nnoremap <backspace> _d0i<backspace><space><esc>==
nnoremap <return> O<esc>j$
nnoremap <c-o> :e<space>.<return>
nnoremap - zOddkP
nnoremap + zOddp
inoremap <Leader>sout System.out.println();<esc>==$hi
inoremap <Leader>psvm public static void main(String[] args) {<esc>==A<return>}<esc>O
inoremap <Leader>scwait new<space>Scanner(System.in).nextLine();
nnoremap <Leader>f :FixWhitespace<return>
nnoremap <C-p> :CommandT<return>
nnoremap å zO
nnoremap <Leader>aaa O// Arrage<return><esc>0DA<return>// Act<return><esc>0DA<return>// Assert<return><esc>kkkkA.<esc>==A<backspace>
nnoremap <Leader>it oit(<space>'',<space>function<space>()<space>{<return>}<space>)<esc>==k==0f'a
nnoremap <Leader>It Oit(<space>'',<space>function<space>()<space>{<return>}<space>)<esc>==k==0f'a
nnoremap <Leader>describe o<return>describe(<space>'',<space>function<space>{<return>}<space>);<esc>==k==0f'a
nnoremap <Leader>Describe O<return>describe(<space>'',<space>function<space>{<return>}<space>);<esc>==k==0f'a

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

" Disable swap
set noswapfile
