"NeoBundle
 if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }
NeoBundle 'rails.vim'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'https://github.com/AndrewRadev/switch.vim.git'
NeoBundle 'https://github.com/tpope/vim-endwise.git'
NeoBundle 'https://github.com/vim-scripts/ruby-matchit.git'
NeoBundle 'https://github.com/supermomonga/neocomplete-rsense.vim.git'
NeoBundle 'https://github.com/Shougo/neocomplete.vim.git'
call neobundle#end()
filetype plugin indent on     " Required!

"NerdTree
autocmd vimenter * if !argc() | NERDTree | endif
"NeoComplete
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
let g:neocomplete#sources#rsense#home_directory = '/opt/rsense'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" demiliter for function compl
if !exists('g:neocomplcache_delimiter_patterns')
   let g:neocomplcache_delimiter_patterns = {}
endif
 
"endwise
let g:endwise_no_mappings=1
"vim-ruby
set tabstop=2
set shiftwidth=2
set expandtab
"set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
"rsense
let g:rsenseHome = "/opt/rsense"
let g:rsenseUseOmniFunc = 1
"generals
:set encoding=utf-8
:set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
:set number
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
