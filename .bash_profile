# Colorized output for grep and ls
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ..='cd ..'
alias c='clear'
alias ll='ls -lh'
alias gs='git status'
alias vim='/usr/local/Cellar/vim/7.4.1707/bin/vim'
alias dbuild='npm run dev-build'
alias test='npm run test'
export HISTSIZE=""
set -o vi
source ~/.bashrc
nvm use 6.9.5

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
