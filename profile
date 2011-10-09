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

