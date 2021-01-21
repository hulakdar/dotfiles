"Forget compatibility with Vi. Who cares.
set nocompatible

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax enable

set antialias                       " smooth fonts.
set encoding=utf-8                  " Use UTF-8 everywhere.
"scriptencoding utf-8

" this makes netrw really NERDtree-like. lol
let g:netrw_banner = 0
let g:netrw_liststyle = 3
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
colorscheme evening

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

" Gui stuff
set gfn=JetBrains_Mono:h14
