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
export HISTIGNORE="&:[bf]g:exit"

#
# mac stuff
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

#
# show the Library
chflags nohidden ~/Library

#
# use UTF-8 in the terminal
defaults write com.apple.terminal StringEncodings -array 4

