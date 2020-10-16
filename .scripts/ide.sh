#!/bin/bash

# ideコマンドでtmuxのwindow分割を行うスクリプト
# alias ide="~/.scripts/ide.sh"をbashrcに記載して、エイリアスを貼ってください

if [ "$#" -eq 0 ]; then
  tmux split-window -v -p 30
else
  case $1 in
    1)
      tmux split-window -v -p 30
      tmux split-window -h
      tmux select-pane -t 1
      clear
      ;;
    2)
      tmux split-window -v -p 30
      tmux split-window -h
      tmux select-pane -t 1
      clear
      ;;
    *)
      echo [ERROR] "$1" は設定されていない引数です。
      ;;
  esac
fi
