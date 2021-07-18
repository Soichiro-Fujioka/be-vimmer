# editor setting
alias vim "nvim"
alias pip "pip3"

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

# set git shortcut
alias g='git'
alias gb='git branch'
alias gcb='git checkout -b'
alias gc='git checkout'
alias gs='git status'
alias ga='git add'
alias gm='git merge'
alias gp='git push'

# pyenv settings
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
status is-interactive; and pyenv init --path | source
pyenv init - | source
