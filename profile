#!/bin/bash
#
export ARCHFLAGS="-arch x86_64"

# shell histories
export HISTIGNORE="&:ls:[bf]g:exit"
alias hist="history | tail -56"

# vims
export EDITOR=vim

# rbenv
if [ -d  "${HOME}/.rbenv"} ]
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

