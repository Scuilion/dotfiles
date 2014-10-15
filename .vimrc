call pathogen#infect()
call pathogen#helptags()

set guifont=Consolas:h10:cANSI
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
set nowrap
"auto load files
:set autoread 
"allways sync
autocmd BufEnter * :syntax sync fromstart

let mapleader = ","
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
set shiftwidth=4
set softtabstop=4

" keeps swap files local!
" set directory=~\vimfiles\swap\

"alt key for moving from file to file
noremap <A-k> <C-W>k
noremap <A-j> <C-W>j
noremap <A-h> <C-W>h
noremap <A-l> <C-W>l
noremap <A-p> <C-W>p
noremap <A-o> <C-W>o
noremap <A-n> <C-W>n
noremap <A-r> <C-W>r

"" Copy/Paste
noremap YY "+y<CR>
noremap P "+gP<CR>

"quick font change
if  has("gui_running") && (has("win32") || has("win64")) 
    nnoremap <C-Up> :silent let &guifont=substitute(&guifont, ':h\zs\d\+', '\=submatch(0)+1', '')<CR> 
    nnoremap <C-Down> :silent let &guifont=substitute(&guifont, ':h\zs\d\+', '\=submatch(0)-1', '')<CR> 
endif 

"always save all
ca w wa
"always overwrite session
ca mks mks!
"replace back slashes with forward
ca fs s/\\/\//g
ca fsg %s/\\/\//g
"reaplace forward slashes with back
ca rfs s/\//\\/g
ca rfsg %s/\//\\/g
"open window maximized. 'x' on an English Windows version.
au GUIEnter * simalt ~x "

" abbreviations
" all methods
ab allMethod metaClass.methods*.name.sort().unique()
:imap sout<Tab> System.out.println();<Esc>F)i 

"for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_root_markers = ['.acignore']
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_by_filename = 1

" Tab view
noremap gc :tabclose<cr> 

" NERDTtree
let NERDTreeBookmarksFile=expand("$HOME/.vim-NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.swp$']
noremap <A-m> :NERDTreeFind<CR>
noremap \\ :NERDTreeToggle<CR>

" Syntastic
let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_java_checkers=['javac', 'checkstyle']
let g:syntasticToggleMode = 'passive'
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_java_checkstyle_conf_file = '/home/kevino/projects/courses/algs4/checkstyle-5.5/checkstyle.xml'

"open in browser
noremap <A-b> :exe ':silent !firefox %'<cr>

"set whitespace characters
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"recognize groovy file
augroup setSyntax
    autocmd! 
    autocmd BufNewFile, BufRead *.story   set syntax=groovy
    autocmd BufNewFile, BufRead *.gradle   set syntax=groovy
augroup END

" Commenting blocks of code.
let b:comment_leader = '# '
augroup setCommentLeader
    autocmd! 
    autocmd FileType c,cpp,java,scala,groovy let b:comment_leader = '// '
augroup END

noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"utils
:inoremap \fp <C-R>=getcwd()<CR>

