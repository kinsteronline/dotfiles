export EDITOR=vim
#
# rbenv & rubies
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#
# node & npm
export PATH=/usr/local/share/npm/bin:${PATH}

#
# histories
export HISTSIZE=2000
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:exit"
#
# mac stuff
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

#
# show the Library
chflags nohidden ~/Library

#
# use UTF-8 in the terminal
defaults write com.apple.terminal StringEncodings -array 4

#
# git
function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

