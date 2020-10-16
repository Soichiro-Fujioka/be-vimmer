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
	"call dein#add('scrooloose/nerdtree')
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
	call dein#add('Shougo/defx.nvim')
	"Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"-----カラースキーマの設定----
"colorscheme-------
"colorscheme gruvbox
colorscheme zenburn
"colorscheme iceberg
set background=dark
"-----------------------------

"----------基本設定-----------
set nocompatible                   "vi互換モードを許可しない
filetype plugin indent on          "ファイルタイプの自動検出、ファイルタイプ用のプラグインとインデント設定を自動で読み込み
syntax enable                      "シンタックスハイライトを有効にする
set mouse=a                        "マウス操作を許可する
runtime macros/matchit.vim         "タグのジャンプを拡張する(%を使用)
set backspace=indent,eol,start     "バックスペースによる削除
set tabstop=2                      "タブ幅を半角スペース2文字分にする
set shiftwidth=2                   "自動インデントでずれる幅
set number                         "行数を表示
set autoindent                     "改行時に前の行のインデントを継承
set smartindent                    "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cursorline                     "カーソル行をハイライトする
set title                          "タイトルを表示する
set hlsearch                       "検索結果をハイライトする
set noswapfile                     "スワップファイルを作成しない
set showcmd                        "入力中のコマンドを表示する
set encoding=UTF-8                 "エンコーディングをUTF-8にする
"-----------------------------

"-----vim-cheatsheet setting-------
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md'

"-----NERDTree settings-------------
"let NERDTreeShowHidden=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"nnoremap <silent><C-1> :NERDTreeToggle<CR>

"----------ale settings----------
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

"----------completion settings----------
"ref: (https://note.com/yasukotelin/n/na87dc604e042)
let g:deoplete#enable_at_startup = 1
set completeopt+=menuone
set completeopt+=noinsert
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

"----------キーマップ----------
nnoremap gr :tabprevious<CR>
