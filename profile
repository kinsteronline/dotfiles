#!/bin/bash
#
export ARCHFLAGS="-arch x86_64"

# Adding local first since it's last in /etc/paths
export PATH=/usr/local/bin:${PATH}

# shell histories
export HISTIGNORE="&:ls:[bf]g:exit"
alias hist="history | tail -56"

# vims
export EDITOR=vim

# rbenv
if [ -d  "${HOME}/.rbenv" ]
then
  export PATH="${HOME}/.rbenv/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# let's say we're using homebrew to manage softwares
if [ -s /usr/local/bin/brew ]
then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
fi

# Git
alias gs='git status'
alias go='git checkout'

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
function git-track {
  CURRENT_BRANCH=$(parse_git_branch)
  git-config branch.$CURRENT_BRANCH.remote $1
  git-config branch.$CURRENT_BRANCH.merge refs/heads/$CURRENT_BRANCH
}
function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

