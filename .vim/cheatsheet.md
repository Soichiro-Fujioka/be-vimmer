# わたしの vim チートシート

## tmux

- `ctrl + q` : prefix
- `prefix + k`: 上に移動
- `prefix + j`: 下に移動
- `prefix + h`: 左に移動
- `prefix + l`: 右に移動
- `prefix + n : 新規ウィンドウ
- `prefix + s : セッション一覧
- `prefix + w : ウィンドウを破棄
- `prefix + , : ウィンドウの名前変更
- `prefix + Tab : 次のウィンドウに移動
- `prefix + S-Tab : 前のウィンドウに移動
- `prefix + z : フォーカスウィンドウを最大化

## vim

- <Tab> : 前のタブへ移動
- <S-Tab> : 前のタブへ移動
- ss : 水平に分割
- sv : 垂直に分割
- sh : 右に移動
- sj : 上に移動
- sk : 下に移動
- sl : 右に移動
- sf : ファイラーの起動

### 画面操作系

- cmd + e で resizer 起動

### テキスト入力系

- 0 で行頭へ移動
- \$ で行末へ移動
- gg でファイルの先頭へ移動
- G でファイルの末尾へ移動
- cmd + f で次のページへ移動
- cmd + b で前のページへ移動
- gcc でコメントアウト
- [visual] + gc で複数行をコメントアウト

### 補完系

- K で定義を表示
- gd で定義へジャンプ

### タブ操作系

- Tab で次のタブへ移動
- S-Tab で前のタブへ移動

### ファイラー系

- Enter でツリーを展開
- o でファイルを開く
- h で上のディレクトリに移動
- N で新規ファイル作成
- K で新規ディレクトリを作成
- d でファイル削除
- r でファイル名変更
- m でファイル名変更

### git 系

- :gs で git status
  - ファイルにカーソルを合わせて`a`で git add
  - ファイルにカーソルを合わせて`D`で git diff
- :gc で git commit
- :gp で git push
- :gl で git log
