set guifont=Consolas:h10
set guioptions=

colorscheme wombat 
set number
set nocompatible
filetype on
filetype plugin on
syntax enable
set autoindent
set wildmenu
set mouse=a
set backspace=2
set ignorecase
set smartcase
set incsearch
set hlsearch
set ruler
inoremap jj <Esc>

" set ; to : in command mode
noremap : ;
noremap! : ;
noremap ; :
noremap! ; :

iunmap :
iunmap ;

" Spaces are better than a tab character
set expandtab
set smarttab
 
" Who wants an 8 character tab? Not me!
set shiftwidth=3
set softtabstop=3

" keeps swap files local!
set directory=~\vimfiles\swap\

"fuzzyfind? fuzzybind!
nnoremap <C-Space> :FufFile<CR>

"alt key for moving from file to file
noremap <A-k> <C-W>k
noremap <A-j> <C-W>j
noremap <A-h> <C-W>h
noremap <A-l> <C-W>l
noremap <A-p> <C-W>p
noremap <A-o> <C-W>o
noremap <A-n> <C-W>n
noremap <A-r> <C-W>r

set directory=.,$TEMP
