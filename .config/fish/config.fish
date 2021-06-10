# editor setting
alias vim "nvim"

alias ide "~/.scripts/ide.sh"
set -x TERM xterm-256color

# set PATH
set -x PATH /opt/homebrew/bin $PATH
set -x PATH /opt/homebrew/sbin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
set -x NODEBREW_ROOT /opt/homebrew/bin/nodebrew

function fish_prompt
    powerline-shell --shell bare $status
end