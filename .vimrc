set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-unimpaired'
"Plugin 'tpope/vim-rails'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'sjl/gundo.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'gabesoft/vim-ags'
Plugin 'cocoa.vim'
Plugin 'skammer/vim-css-color'
Plugin 'vim-ruby/vim-ruby'
"Plugin 'Pydiction'
"Plugin 'pyflakes.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
"Plugin 'h1mesuke/unite-outline'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'kana/vim-smartinput'
Plugin 'godlygeek/tabular'

call vundle#end()
filetype plugin indent on


"===================================================
"style
"===================================================
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set termencoding=utf-8
set fileencoding=utf-8
set autochdir
set history=100
set showcmd
set smartcase
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start
set whichwrap+=b,s,<,>,[,]
set scrolloff=3
set sidescrolloff=3
set mouse=a
set mousehide
set nomousefocus
set selectmode=mouse
set mousemodel=extend
set nu
set ruler
set langmenu=en_US
set incsearch

autocmd! InsertLeave *	set imdisable
autocmd! InsertEnter *	set noimdisable

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

if has("gui_running")
    set cursorline
    set background=dark
    colorscheme solarized
    set guifont=Monaco:h14
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    "set fullscreen
endif

function! DoPrettyXML() 
	let l:origft = &ft 
	set ft= 
	1s///e 
	0put ='' 
	$put ='' 
	silent %!xmllint --format --encode utf8 -
	2d 
	$d 
	1 
	exe "set ft=" . l:origft 
endfunction 
command! FM call DoPrettyXML()

"打开文件光标设置为上次关闭的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/DerivedData/*

"===================================================
"Key mapping
"===================================================
let mapleader=','
let maplocalleader=','

"scorlling up or down page
noremap <D-j> <C-f>
noremap <D-k> <C-b>

noremap ; :
noremap : ;
"inoremap <c-h> <left>
"inoremap <c-l> <right>
"inoremap <c-j> <c-o>gj
"inoremap <c-k> <c-o>gk
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nnoremap <F11> :let &showtabline = &showtabline == 1 ? 0 : 1<CR>
nnoremap <F2> gg$/content<CR>kVgg"ay/<CR>vityggVGpggI<ct><Esc>GA</ct><Esc>:FM<CR>ggo<content><Esc>Go<Esc>a</content><Esc>ggdd"aP:%s/&quot;/'/ge<CR><F3>
"nnoremap <F2> G$?content<CR>vityggVGpggI<ct><Esc>GA</ct><Esc>:FM<CR>ggo<content><Esc>Go<Esc>a</content><Esc><F3>
nnoremap <F3> gg$/style<CR>:s/></>\r</ge<CR>vat<.....gv>.gvkoj>:%s/\n[\t\n ]*\n/\r/ge<CR>:%s/[\t ]*function/\r\0/ge<CR>
"nnoremap <F3> :%s/\n[\t\n ]*\n/\r/g<CR>
nnoremap <F7> G$?</script><CR>:s/[ \t]\{3,\}/\r/g<CR>


"===================================================
"plugin
"===================================================
"---------------------------------------------------
"Pydiction
"---------------------------------------------------
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

"---------------------------------------------------
"syntastic
"---------------------------------------------------
let g:syntastic_auto_jump=0
let g:syntastic_loc_list_height=5
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['ruby', 'php'],
                           \ 'passive_filetypes': ['puppet'] }
"let g:syntastic_error_symbol='✗'
"let g:syntastic_style_error_symbol='s✗'
"let g:syntastic_warning_symbol='⚠'
"let g:syntastic_style_warning_symbols='s⚠'

"---------------------------------------------------
"vim-indent-guides
"---------------------------------------------------
nnoremap <silent> <Leader>g : IndentGuidesToggle<CR>

"---------------------------------------------------
"nerdtree
"---------------------------------------------------
nnoremap <silent> <F5>       : NERDTreeToggle<CR>
nnoremap <silent> <Leader>nt : NERDTree<CR>
nnoremap <silent> <Leader>nf : NERDTreeFind<CR>
let NERDTreeWinPos = "right"
let NERDTreeMinimalUI = 0
let NERDTreeWinSize = 38
let NERDTreeIgnore=['\.vim$', '\~$', '\.beam$']
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2

"---------------------------------------------------
"zencoding-vim
"---------------------------------------------------
let g:user_zen_leader_key = '<D-y>'

"---------------------------------------------------
"tagbar
"---------------------------------------------------
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
nnoremap <Leader>l :TagbarToggle<CR>

"---------------------------------------------------
"powerline
"---------------------------------------------------
set laststatus=2
let g:Powerline_stl_path_style='relative'                       

"---------------------------------------------------
"Gundo
"---------------------------------------------------
nnoremap <silent> <F4> :GundoToggle<CR>
let g:gundo_preview_bottom = 1
let g:gundo_right = 1

"---------------------------------------------------
"neocomplcache
"---------------------------------------------------
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#max_list = 20

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"

inoremap <expr><C-g>  neocomplete#undo_completion()
inoremap <expr><C-l>  neocomplete#complete_common_string()
inoremap <expr><C-h>  neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>   neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><CR>   pumvisible() ? neocomplete#close_popup() : '<CR>'
inoremap <expr><C-e>  neocomplete#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

"---------------------------------------------------
"easymotion
"---------------------------------------------------
let g:EasyMotion_leader_key = '<space>'

"---------------------------------------------------
"solarized
"---------------------------------------------------
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"

"---------------------------------------------------
"ctrlp
"---------------------------------------------------
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = { 'dir':  '\.git$\|\.vim$\|\.hg$\|\.svn$\|Library$\|\.neocon$\|DerivedData$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pdf$\|\.dat$\|\.png$\|\.swp$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_mruf_max = 100
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'
"let g:ctrlp_mruf_include = '\.py$\|\.rb$'
