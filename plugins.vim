let g:go_disable_autoinstall = 1

" syntastic
let g:syntastic_go_checkers = []
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1


" NERDTree
let NERDTreeShowHidden=0
" " Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeTabsToggle<CR>
" " ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" nerdcommenter
" ,/ to invert comment on the current line/selection
" nmap <leader>/ :call NERDComment(0, "invert")<cr>
" vmap <leader>/ :call NERDComment(0, "invert")<cr>

" CtrlP
let g:ctrlp_map = '<leader>,'
let g:ctrlp_cmd = 'CtrlP'

nmap <leader>. :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>l :CtrlPLine<cr>
nmap <leader>b :CtrlPBuff<cr>
nmap <leader>m :CtrlPBufTag<cr>
nmap <leader>M :CtrlPBufTagAll<cr>

let g:ctrlp_clear_cache_on_exit = 1
" ctrlp leaves stale caches behind if there is another vim process runnin
" " which didn't use ctrlp. so we clear all caches on each new vim invocation
cal ctrlp#clra()
"
let g:ctrlp_max_height = 40
"
"" show on top
"let g:ctrlp_match_window_bottom = 0
""let g:ctrlp_match_window_reversed = 0

" jump to buffer in the same tab if already open
let g:ctrlp_switch_buffer = 1
"
" " if in git repo - use git file listing command, should be faster
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -cod']
"
"" open multiple files with <c-z> to mark and <c-o> to open. v - opening in
" vertical splits; j - jump to first open buffer; r - open first in current
" buffer
let g:ctrlp_open_multiple_files = 'vjr'

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']
if executable('ag')
        " Use ag over grep
        set grepprg=ag\ --nogroup\ --nocolor

        " Use ag in CtrlP for listing files. Lightning fast and
        " respects .gitignore
        let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

        " ag is fast enough that CtrlP doesn't need to cache
        let g:ctrlp_use_caching = 0
endif

" Ag
" ,a for Ag
nmap <leader>k :Ag<space>

let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 1
let g:unite_source_file_mru_long_limit = 100
let g:unite_source_directory_mru_long_limit = 100
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Color Scheme
set t_Co=256
color Tomorrow-Night
hi Search term=reverse cterm=reverse gui=reverse ctermfg=237

" Map cursor for insert mode
let &t_SI .= "\<Esc>[5 q"
" solid block
let &t_EI .= "\<Esc>[2 q"
" 1 or 0 -> blinking block
" 3 -> blinking underscore
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar
"

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" better navigation of wrapped lines
nnoremap j gj
nnoremap k gk

" easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Splitting
map <Leader>- :split<CR>
map <Leader><bar> :vsplit<CR>

" map <leader>n :NERDTreeToggle<cr>
map <leader>/ :TComment<cr>
" map <leader>c :CtrlPClearAllCaches<cr>
" map <leader>r :call VimuxRunCommand("clear;go run *.go")<cr>
" map <leader>l :VimuxRunLastCommand<cr>
" map <leader>q :VimuxCloseRunner<cr>
" map <leader>z :call VimuxZoomRunner()<cr>
" map <leader>p :YRShow<cr>

" Removing search highlighting
nnoremap <ESC><ESC> :nohlsearch<CR>

" split naviagation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" disable arrow keys
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

nmap <F4> :TagbarToggle<CR>

au BufRead,BufNewFile *.md set filetype=markdown
" au BufWritePost *.go silent! !~/.vim-go/gotags -R -sort *.go > tags &
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>cc :GoOracleCallers<cr>
au FileType go nmap <Leader>cg :GoOracleCallgraph<cr>

let g:go_play_open_browser = 0
let g:go_fmt_command = "gofmt"

let g:VimuxOrientation = "h"
let g:VimuxHeight = "40"

" let g:flake8_max_line_length=120
" Enable Flake8 for python files
" autocmd BufWritePost *.py call Flake8()

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

