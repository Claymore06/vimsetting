" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'https://github.com/Shougo/neocomplete.vim'
NeoBundle 'https://github.com/kana/vim-smartinput.git'
NeoBundle 'https://github.com/AndrewRadev/switch.vim.git'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'https://github.com/vim-airline/vim-airline.git'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'https://github.com/nanotech/jellybeans.vim.git'
NeoBundle 'nathanaelkane/vim-indent-guides'
call neobundle#end()

"NerdTree
autocmd vimenter * if !argc() | NERDTree | endif

" NeoComplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
if !exists('g:neocomplcache_delimiter_patterns')
  let g:neocomplcache_delimiter_patterns = {}
endif

" smartinput
call smartinput#define_default_rules()

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Vim AirLine
set laststatus=2
set showtabline=2
set t_Co=256
let g:airline_theme='jellybeans'

" Indent Guide
let g:indent_guides_enable_on_vim_startup=1
" Generals
source /usr/local/share/vim/vim80/defaults.vim
nnoremap <S-Tab>  :tabNext<Enter>
nnoremap <C-n> :tabnew<Enter>:NERDTree<Enter>
nnoremap <C-t> :tabnew<Enter>
nnoremap <C-F4> :tabclose<Enter>
set number
set hlsearch
set autochdir
set mouse=c
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
colorscheme jellybeans
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Required
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
