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

"-------------------------------------------------------------------------------
" Other plugins
"-------------------------------------------------------------------------------

"vim airline theme settings
let g:airline_theme='cobalt2'

"vim-cheatsheet setting
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md'

"ale settings
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

"vim-closetag settings
let g:closetag_shortcut = '>'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,tsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'

"-------------------------------------------------------------------------------
" Dein
"-------------------------------------------------------------------------------
let s:dein_dir = expand('~/.cache/dein')
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir = expand('~/.vim/rc')
  let s:toml = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
