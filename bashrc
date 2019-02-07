# from github.com/skokado/home-dir/bashrc
alias c='clear'
alias ..='cd ..'
alias ls='ls -ah --color=auto'
alias rm='rm -i'
alias mv='mv -i'
alias p='python'
alias g='git'
alias ru='ruby'
alias ra='rails'
alias d='docker'
alias dc='docker-compose'
alias drm-all='docker rm $(docker ps -f status=exited -q)'
HISTTIMEFORMAT='%Y-%m-%d %T(%z) ' # history command with timestamp
