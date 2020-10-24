# be-vimmer

vim と仲良くなるための設定

# 必要環境

- vim version > 8.2
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
ln -s be-vimmer/.vim/coc-settings.json .vim/coc-settings.json
ln -s be-vimmer/.config/powerline-shell/config.json .config/powerline-shell/config.json
```

- call dein#check_install()でプラグインのインストール
- .bashrc に以下を記載

```
alias ide="~/.scripts/ide.sh"
export TERM=xterm-256color
```

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
