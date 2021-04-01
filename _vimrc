"Forget compatibility with Vi. Who cares.
set nocompatible

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile

set backspace=2   " Backspace deletes like most programs in insert mode

set incsearch     " do incremental searching
" set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

"Enable filetypes
filetype on
filetype plugin indent on
syntax on
set nojoinspaces

set antialias                       " smooth fonts.
set encoding=utf-8                  " Use UTF-8 everywhere.
"scriptencoding utf-8

" this makes netrw really NERDtree-like. lol
let g:netrw_banner = 0
let g:netrw_liststyle = 2
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


set path+=**

set wildmenu

" set background=light                " Background.
set guioptions-=r                   " Dont show right scrollbar
" set guioptions-=T                   " Hide toolbar.

" Set the color scheme. Change this to your preference.
" Here's 100 to choose from: http://www.vim.org/scripts/script.php?script_id=625
"colorscheme wombat
colorscheme desert

"------------------------
" Tab stuff
"------------------------
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Indent stuff
set smartindent
set autoindent

" case insensitive search
set ignorecase
set smartcase

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Map space to / (search) and c-space to ? (backgwards search)
map <space> /
map <c-space> ?
map <silent> <leader><cr> :noh<cr>

" Gui stuff for Windows
set gfn=JetBrains_Mono:h14
