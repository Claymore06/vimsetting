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

" Generals
nnoremap <S-Tab>  :tabNext<Enter>
nnoremap <C-n> :tabnew<Enter>:NERDTree<Enter>
nnoremap <C-t> :tabnew<Enter>
nnoremap <C-F4> :tabclose<Enter>
:set number
:set directory=~/.vimtmp
:set backupdir=~/.vimtmp
:set undodir=~/.vimtmp
:set hlsearch
:set autochdir
colorscheme slate
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
