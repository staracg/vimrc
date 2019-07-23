" Configuration file for vim 
set modelines=0     " CVE-2007-2438 
set backspace=2     " more powerful backspacing 
set autoindent      " enable autoinident

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" not compatible with the old-fashion vi mode
set nocompatible

" general
set linespace=0
set background=dark                                                                                      
set wildmenu
set smarttab
set showmatch       " Cursor shows matching ) and }
set showmode        " Show current mode  "
set cursorline      " cursorline highlighting
set expandtab
set ttyfast
set magic
set cmdheight=1
set tabstop=4
set lazyredraw
set softtabstop=4
set shiftwidth=4
set nu              " show line numbers
set ru              " ruler
set ai
set si
set wrap
set laststatus=2 
set ls=2            " always show status bar
set incsearch       " incremental search
set hlsearch        " highlighted search results
set autoread        " auto read when file is changed from outside "
set history=1000    " keep 50 lines of command line history  "
set scrolloff=3     " when scrolling, keep cursor 3 lines away from screen border
set pastetoggle=<F2> " paste mode
set t_Co=256
syntax on           " syntax highlight on

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

"Bundle
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'  "branch of powerline
Plugin 'c9s/colorselector.vim'
Plugin 'ap/vim-css-color'
Plugin 'L4ys/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'emmetio/emmet'
Plugin 'gregsexton/MatchTag'
Plugin 'kien/ctrlp.vim'
Plugin 'python_match.vim'
Plugin 'tpope/vim-surround'

"Plugin 'AutoComplPop'
Plugin 'othree/vim-autocomplpop'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'ironcamel/vim-script-runner'
Plugin 'xuhdev/SingleCompile'

"Plugin for tracecode 
Plugin 'hewes/unite-gtags'
Plugin 'Shougo/unite.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/unite-outline'
Plugin 'Shougo/vimproc.vim'

"let mapleader=','
let g:Powerline_symbols='fancy'
let g:Powerline_cache_enabled = 0
let g:user_emmet_leader_key='<C-e>' 
let g:acp_behaviorSnipmateLength = 1
let g:script_runner_key = '<F9>'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_search_word_highlight=1
map <Tab> :NERDTreeToggle<CR>
nmap <F12> :SCCompileRun<cr>

"autofoucs on tagbar open
let g:tagbar_autofoucs = 1

"key mapping for gtags
nnoremap <leader>gd :Unite gtags/def:
nnoremap <leader>gr :Unite gtags/ref:
nnoremap <leader>gg :Unite grep<CR>
nnoremap <silent><leader>gc :Unite gtags/context<CR>


if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --nocolor --column --ignore=*.pyc --ignore=*.o --ignore=*.ko'
elseif executable('awk')
	let g:unite_source_grep_command='ack'
	let g:unite_source_grep_default_opts='--no-group --no-color -k -H'
endif

" use 256 colors when possible
if filereadable(expand('~/.vim/bundle/molokai/colors/molokai.vim'))
	let g:molokai_original = 1
	let t_Co = 256
	colorscheme molokai      
endif

" colors for gvim 
if has('gui_running')
	colorscheme molokai
endif

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %


" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tt :tabnew 
map ts :tab split<CR>

" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227
