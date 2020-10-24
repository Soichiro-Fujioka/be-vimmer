# be-vimmer
vimと仲良くなるための設定
# 必要環境
- vim version > 8.2
- tmux
# 環境構築
- deinのインストール
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
- .bashrcに以下を記載
```
alias ide="~/.scripts/ide.sh"
export TERM=xterm-256color 
```
### キーバインド
- `.vim/cheatsheet.md`にチートシートがあります
- vim起動中に`:Cheat`でチートできます

### トラブルシューティング
- 補完が上手く機能しない
	- 補完で使用しているpython packageがインストールされているか確認する
	- vimで使用しているpythonを確認する
	```
	:pythonx print(sys.version); print(sys.path)
	```
- ファイラーのフォントが適応されない
	- nerd fontがインストールされているか確認する
