# be-vimmer

vim と仲良くなるための設定

# 必要環境

- neovim
- tmux
- silversearcher-ag

# 環境構築

- dein のインストール
- 各設定ファイルのエイリアスを張る

```
ln -s be-vimmer/.vimrc .vimrc
ln -s be-vimmer/.vim/ .vim
ln -s be-vimmer/.scripts .scripts
ln -s be-vimmer/.tmux.conf .tmux.conf
ln -s be-vimmer/.config .config
```

- call dein#check_install()でプラグインのインストール
- .bashrc に以下を記載

```
alias vim="$(which nvim)"
alias ide="~/.scripts/ide.sh"
export TERM=xterm-256color
```

### 起動

- `tmux`で環境起動
- `ide`コマンドで上下に画面分割が可能です
  - `ide 1`コマンドで上下に分割し、更に下の画面を左右に分割します

### キーバインド

- `.vim/cheatsheet.md`にチートシートがあります
- vim 起動中に`:Cheat`でチートできます

### トラブルシューティング

- 補完が上手く機能しない
  - 補完で使用している python package がインストールされているか確認する
  - vim で使用している python を確認する
  ```
  :pythonx print(sys.version); print(sys.path)
  ```
- ファイラーのフォントが適応されない
  - nerd font がインストールされているか確認する
