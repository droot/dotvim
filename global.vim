syntax on                " Turn on syntax highlighting.
set ofu=syntaxcomplete#Complete
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" utf-8/unicode support
" " requires Vim to be compiled with Multibyte support, you can check that by
" " running `vim --version` and checking for +multi_byte.
if has('multi_byte')
    scriptencoding utf-8
    set encoding=utf-8
end

set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
set listchars=tab:▷⋅,trail:·
set list
set showmatch

set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set history=1000
" Setting shell for vim
set shell=sh
set autoindent
set ttimeoutlen=50
if has("mouse")
    set mouse=a
endif
set mousehide

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=.,$TEMP  " Keep swap files in one location
set backupdir=.,$TEMP  " Keep swap files in one location

set expandtab                    " Use spaces instead of tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

set laststatus=2                  " Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

let mapleader=","
let maplocalleader = "\\"
