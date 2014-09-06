set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'git@github.com:gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'git@github.com:fatih/vim-go'
Plugin 'git@github.com:majutsushi/tagbar'
Plugin 'git@github.com:ervandew/supertab'
Plugin 'git@github.com:scrooloose/syntastic'
Plugin 'git@github.com:tomtom/tcomment_vim'
Plugin 'git@github.com:jlanzarotta/bufexplorer.git'
Plugin 'git@github.com:kien/ctrlp.vim'
Plugin 'git@github.com:jiangmiao/auto-pairs'
Plugin 'git@github.com:benmills/vimux'
Plugin 'git@github.com:christoomey/vim-tmux-navigator'
Plugin 'git@github.com:rking/ag.vim.git'
Plugin 'git@github.com:Shougo/unite.vim.git'
Plugin 'git@github.com:scrooloose/nerdtree'
Plugin 'git@github.com:jistr/vim-nerdtree-tabs.git'

call vundle#end()            " required

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
