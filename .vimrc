"dein Scripts-----------------------------
" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
	" sh ./installer.sh ~/.cache/dein
	call dein#add('scrooloose/nerdtree')
	call dein#add('tpope/vim-fugitive')
	call dein#add('tpope/vim-surround')
	call dein#add('tpope/vim-commentary')
	call dein#add('vim-airline/vim-airline')
	call dein#add('dense-analysis/ale')
	call dein#add('prettier/vim-prettier')
	call dein#add('sheerun/vim-polyglot')
	call dein#add('jiangmiao/auto-pairs')
	call dein#add('simeji/winresizer')
	"call dein#add('neoclide/coc.nvim')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('roxma/nvim-yarp')
	call dein#add('roxma/vim-hug-neovim-rpc')
	call dein#add('reireias/vim-cheatsheet')
	"Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"colorscheme-------
colorscheme gruvbox
"colorscheme zenburn
"colorscheme iceberg

filetype plugin indent on
syntax enable
syntax on
filetype plugin indent on
set background=dark
set mouse=a
set nocompatible
filetype plugin on
runtime macros/matchit.vim
set tabstop=2
set shiftwidth=2
set number
set autoindent
set smartindent
set cursorline
set title
"highlight LineNr
set hlsearch
set noswapfile
set showcmd
set encoding=UTF-8
"Short Cut Settings
nnoremap gr :tabprevious<CR>

"vim-cheatsheet setting-------
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md'

"NERDTree settings-------------
let NERDTreeShowHidden=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent><C-1> :NERDTreeToggle<CR>
"ale settings------------------
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
"completion settings(https://note.com/yasukotelin/n/na87dc604e042)
let g:deoplete#enable_at_startup = 1
set completeopt+=menuone
set completeopt+=noinsert
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
