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
	call dein#add('ryanoasis/vim-devicons')
	call dein#add('kristijanhusak/defx-icons')
	call dein#add('kristijanhusak/defx-git')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('roxma/nvim-yarp')
	call dein#add('roxma/vim-hug-neovim-rpc')
	call dein#add('reireias/vim-cheatsheet')
	call dein#add('Shougo/defx.nvim')
	call dein#add('Shougo/denite.nvim')
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
nnoremap <silent>sf :<C-u>Defx -listed -resume
      \ -columns=icon:indent:icons:filename:git:type<CR>

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


"----------coc.nvim settings----------
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ ]

"----------denite.nvim settings---------
" Define mappings
augroup denite_filter
  autocmd FileType denite call s:denite_my_settings()
  function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
    \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
    \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
    \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
    \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
    \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
    \ denite#do_map('toggle_select').'j'
    imap <silent><buffer> <C-n> <Plug>(denite_filter_quit)<DOWN>
    imap <silent><buffer> <C-p> <Plug>(denite_filter_quit)<UP>
    imap <silent><buffer> <CR> <Plug>(denite_filter_quit)<CR>
  endfunction
augroup END

nnoremap [denite] <Nop>
nmap sF [denite]
"nnoremap <silent> SF :<C-u>DeniteBufferDir
"      \ -direction=topleft file file:new<CR>

nnoremap <silent> [denite]<C-g> :<C-u>Denite -buffer-name=search -no-empty grep<CR>
nnoremap <silent> [denite]<C-r> :<C-u>Denite -resume<CR>
nnoremap <silent> [denite]<C-n> :<C-u>Denite -resume -cursor-pos=+1 -immediately<CR>
nnoremap <silent> [denite]<C-p> :<C-u>Denite -resume -cursor-pos=-1 -immediately<CR>

" use floating
let s:denite_win_width_percent = 0.8
let s:denite_win_height_percent = 0.7
let s:denite_default_options = {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ 'highlight_filter_background': 'DeniteFilter',
    \ 'prompt': 'λ ',
    \ 'start_filter': v:true,
    \ }
let s:denite_option_array = []
for [key, value] in items(s:denite_default_options)
  call add(s:denite_option_array, '-'.key.'='.value)
endfor
call denite#custom#option('default', s:denite_default_options)

call denite#custom#var('file/rec', 'command',
    \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
    \ [ '.git/', '.ropeproject/', '__pycache__/',
    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
" grep
command! -nargs=? Dgrep call s:Dgrep(<f-args>)
function s:Dgrep(...)
  if a:0 > 0
    execute(':Denite -buffer-name=grep-buffer-denite grep -path='.a:1)
  else
    let l:path = expand('%:p:h')
    if has_key(defx#get_candidate(), 'action__path')
      let l:path = fnamemodify(defx#get_candidate()['action__path'], ':p:h')
    endif
    execute(':Denite -buffer-name=grep-buffer-denite -no-empty '.join(s:denite_option_array, ' ').' grep -path='.l:path)
  endif
endfunction
" show Denite grep results
command! Dresume execute(':Denite -resume -buffer-name=grep-buffer-denite '.join(s:denite_option_array, ' ').'')
" next Denite grep result
command! Dnext execute(':Denite -resume -buffer-name=grep-buffer-denite -cursor-pos=+1 -immediately '.join(s:denite_option_array, ' ').'')
" previous Denite grep result
command! Dprev execute(':Denite -resume -buffer-name=grep-buffer-denite -cursor-pos=-1 -immediately '.join(s:denite_option_array, ' ').'')
" keymap
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')

nnoremap <silent> ;r :<C-u>Dgrep<CR>
nnoremap <silent> ;f :<C-u>Denite file/rec<CR>
nnoremap <silent> ;; :<C-u>Denite command command_history<CR>
nnoremap <silent> ;p :<C-u>Denite -resume<CR>
