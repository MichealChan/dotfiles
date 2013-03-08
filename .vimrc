set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"
Bundle "altercation/vim-colors-solarized"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/syntastic"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-repeat"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-unimpaired"
"Bundle "tpope/vim-rails"
"Bundle "Shougo/neocomplcache"
Bundle "Shougo/neosnippet"
Bundle "Shougo/vimproc"
Bundle "Shougo/unite.vim"
Bundle "sjl/gundo.vim"
Bundle "kien/ctrlp.vim"
Bundle "mileszs/ack.vim"
Bundle "cocoa.vim"
Bundle "skammer/vim-css-color"
Bundle "vim-ruby/vim-ruby"
"Bundle "Pydiction"
"Bundle "pyflakes.vim"
Bundle "Lokaltog/vim-powerline"
Bundle "Lokaltog/vim-easymotion"
Bundle "mattn/zencoding-vim"
"Bundle "h1mesuke/unite-outline"
Bundle "majutsushi/tagbar"
Bundle "nathanaelkane/vim-indent-guides"
"Bundle "kana/vim-smartinput"
Bundle "godlygeek/tabular"

filetype plugin indent on


"===================================================
"style
"===================================================
set encoding=utf-8
set termencoding=utf-8
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
nnoremap <F2> G$?content<CR>vityggVGpggI<ct><Esc>GA</ct><Esc>:FM<CR>ggo<content><Esc>Go<Esc>a</content><Esc>
nnoremap <F3> G$/style<CR>:s/[\t ]//g<CR>f>a<CR><Esc>:s/}/}\r/g<CR>vat<..vitoj>vat>
nnoremap <F7> G$?</script><CR>:s/[ \t]\{3,\}/\r/g<CR>
"nnoremap <F3> G$/style<CR>:s/[\t ]//g<CR>f>a<CR><Esc>:s/}/}\r/g<CR>vat<vitoj>vat>
"nnoremap <F2> G$?content<CR>vityggVGpI<conttent><Esc>A</conttent><Esc>:FM<CR>ggo<content><Esc>Go</content><Esc>6G:s/;/;\r/g<CR>


"plugin
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
let NERDTreeIgnore=['\.vim$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

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
let g:Powerline_stl_path_style='full'                       

"---------------------------------------------------
"Gundo
"---------------------------------------------------
nnoremap <silent> <F4> :GundoToggle<CR>
let g:gundo_preview_bottom = 1
let g:gundo_right = 1

"---------------------------------------------------
"neocomplcache
"---------------------------------------------------
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_max_list = 8
"let g:neocomplcache_enable_ignore_case = 0
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_camel_case_completion = 0
"let g:neocomplcache_enable_underbar_completion = 0
"let g:neocomplcache_enable_wildcard = 0
"let g:neocomplcache_manual_completion_start_length = 0
"let g:neocomplcache_enable_auto_select = 1

"if !exists('g:neocomplcache_keyword_patterns')
    "let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"if !exists('g:neocomplcache_omni_patterns')
    "let g:neocomplcache_omni_patterns = {}
"endif

"inoremap <expr><C-g> neocomplcache#undo_completion()
"inoremap <expr><C-l> neocomplcache#complete_common_string()
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>  neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y> neocomplcache#close_popup()
"inoremap <expr><C-e> neocomplcache#cancel_popup()

""inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
""inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
""inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
""inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"

"inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : '<CR>'
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() . '<Space>' : '<Space>'

"imap <C-k> <Plug>(neosnippet_expand_or_jump)
"smap <C-k> <Plug>(neosnippet_expand_or_jump)
""imap <C-k> <Plug>(neocomplcache_snippets_expand)
""smap <C-k> <Plug>(neocomplcache_snippets_expand)

"" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"" For snippet_complete marker.
"if has('conceal')
  "set conceallevel=2 concealcursor=i
"endif

"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,xhtml,xml,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"---------------------------------------------------
"easymotion
"---------------------------------------------------
let g:EasyMotion_leader_key = '<space>'

"---------------------------------------------------
"solarized
"---------------------------------------------------
"if has("gui_running")
    set background=dark
    colorscheme solarized
"endif
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"

"---------------------------------------------------
"ctrlp
"---------------------------------------------------
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.vim$\|\.hg$\|\.svn$\|Library$\|\.neocon$\|\Movies$\|\Music$\|\Downloads$\|\Documents$\|\Pictures$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pdf$\|\.dat$\|\.png$\|\.swp$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_mruf_max = 100
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'
"let g:ctrlp_mruf_include = '\.py$\|\.rb$'
