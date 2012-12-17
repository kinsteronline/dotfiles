export EDITOR=vim
#
# rbenv & rubies
if which rbenv > /dev/null; then 
	eval "$(rbenv init -)";
	export PATH="$HOME/.rbenv/bin:$PATH"
fi

#
# node & npm
export PATH=/usr/local/share/npm/bin:${PATH}

#
# histories
export HISTSIZE=2000
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls*:cd*:pwd:[bf]g:exit:history"

#
# bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

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
export GIT_PS1_SHOWDIRTYSTATE='yes'
PS1='\u ➠ \W$(__git_ps1 " (%s)") \$ '

#
# python
source /usr/local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
 

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
