"How to uninstall plugins
":call map(dein#check_clean(), "delete(v:val, 'rf')")
":call dein#recache_runtimepath()

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
	call dein#add('vim-airline/vim-airline-themes')
	call dein#add('dense-analysis/ale')
	call dein#add('prettier/vim-prettier')
	call dein#add('sheerun/vim-polyglot')
	call dein#add('jiangmiao/auto-pairs')
	call dein#add('simeji/winresizer')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('roxma/nvim-yarp')
	call dein#add('roxma/vim-hug-neovim-rpc')
	call dein#add('reireias/vim-cheatsheet')
	call dein#add('Shougo/defx.nvim')
	call dein#add('alvan/vim-closetag')
	"Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"----------カラースキーマの設定----------
colorscheme gruvbox
"colorscheme zenburn
"colorscheme iceberg
set background=dark

"----------基本設定-----------
set nocompatible                          "vi互換モードを許可しない
filetype plugin indent on                 "ファイルタイプの自動検出、ファイルタイプ用のプラグインとインデント設定を自動で読み込み
syntax enable                             "シンタックスハイライトを有効にする
set mouse=a                               "マウス操作を許可する
runtime macros/matchit.vim                "タグのジャンプを拡張する(%を使用)
set backspace=indent,eol,start            "バックスペースによる削除
set tabstop=2                             "タブ幅を半角スペース2文字分にする
set shiftwidth=2                          "自動インデントでずれる幅
set number                                "行数を表示
"set autoindent                            "改行時に前の行のインデントを継承
set smartindent                           "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cursorline                            "カーソル行をハイライトする
set title                                 "タイトルを表示する
set hlsearch                              "検索結果をハイライトする
set noswapfile                            "スワップファイルを作成しない
set showcmd                               "入力中のコマンドを表示する
set encoding=UTF-8                        "エンコーディングをUTF-8にする
set splitbelow                            "新規ウィンドウを下に開く

"----------キーマップ----------
nnoremap gr :tabprevious<CR>
nmap ss :split<Return><C-w>w              "水平に分割
nmap sv :vsplit<Return><C-w>w             "垂直に分割
map sh <C-w>h                             "画面のフォーカスを左へ移動
map sk <C-w>k                             "画面のフォーカスを上へ移動
map sj <C-w>j                             "画面のフォーカスを下へ移動
map sl <C-w>l                             "画面のフォーカスを右へ移動
nmap <S-Tab> :tabprev<Return>             "前のタブへ移動
nmap <Tab> :tabnext<Return>               "次のタブへ移動
" nmap sf :Defx -show-ignored-files<CR>     "ファイルエクスプローラーを起動
"----------git-fugitive----------
nnoremap <leader>Ga :Git add %:p<CR><CR>  "git add
nnoremap <leader>Gc :Gcommit<CR><CR>      "git commit
nnoremap <leader>Gs :Gstatus<CR>          "git status
nnoremap <leader>Gp :Gpush<CR>            "git push
nnoremap <leader>Gd :Gdiff<CR>            "git diff
nnoremap <leader>Gl :Glog<CR>             "git log
nnoremap <leader>Gb :Gblame<CR>           "git blame
nnoremap <leader>Gw :Gwrite<CR>           "git add
"####################################
"##        plugin独自の設定        ##
"####################################

"----------Defxの設定----------
call defx#custom#column('icon', {
	\ 'directory_icon': '▸',
	\ 'opened_icon': '▾',
	\ 'root_icon': ' ',
	\ })
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'M',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })
autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
	  nnoremap <silent><buffer><expr> o
	  \ defx#do_action('open')
	  nnoremap <silent><buffer><expr> c
	  \ defx#do_action('copy')
	  nnoremap <silent><buffer><expr> m
	  \ defx#do_action('move')
	  nnoremap <silent><buffer><expr> p
	  \ defx#do_action('paste')
	  nnoremap <silent><buffer><expr> <CR>
	  \ defx#do_action('open_tree', 'toggle')
	  nnoremap <silent><buffer><expr> h
	  \ defx#do_action('cd', ['..'])
	  nnoremap <silent><buffer><expr> ~
	  \ defx#do_action('cd')
	  nnoremap <silent><buffer><expr> sf
	  \ defx#do_action('quit')
		nnoremap <silent><buffer><expr> cd
		\ defx#do_action('change_vim_cwd')
	endfunction
call defx#custom#column('icon', {
	\ 'directory_icon': '▸',
	\ 'opened_icon': '▾',
	\ 'root_icon': ' ',
	\ })
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'M',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })

"----------vim airline theme settings----------
let g:airline_theme='cobalt2'

"----------vim-cheatsheet setting------------
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md'

"----------NERDTree settings-------------
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
let g:deoplete#enable_at_startup = 0 
call deoplete#custom#option({
       \   'auto_complete_delay': 0,
       \   'smart_case': v:true,
       \ })
let g:deoplete#enable_ignore_case = 1
autocmd CompleteDone * silent! pclose!
set completeopt=popup,noinsert
set complete+=kspell
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
"----------vim-closetag settings----------
let g:closetag_shortcut = '>'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,tsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'
