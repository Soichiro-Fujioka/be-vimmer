colorscheme iceberg
syntax on
filetype plugin indent on
set background=dark
set mouse=a
set nocompatible
filetype plugin on
runtime macros/matchit.vim
set tabstop=2
autocmd VimEnter * execute 'NERDTree'
set number

"NERDTree settings-------------
let NERDTreeShowHidden=1
"ale settings------------------
let g:ale_sign_column_always = 1










"dein Scripts-----------------------------
" Required:
set runtimepath+=/home/soichiro/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/soichiro/.cache/dein')
  call dein#begin('/home/soichiro/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/soichiro/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
	call dein#add('scrooloose/nerdtree')
	call dein#add('tpope/vim-fugitive')
	call dein#add('tpope/vim-surround')
	call dein#add('tpope/vim-commentary')
	call dein#add('vim-airline/vim-airline')
	call dein#add('dense-analysis/ale')
	call dein#add('prettier/vim-prettier')
	call dein#add('sheerun/vim-polyglot')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
