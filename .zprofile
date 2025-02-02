if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin:$HOME/go/bin:$HOME/.local/bin
export PATH=$PATH:/usr/sbin
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export FIREFOX=$HOME/.mozilla/firefox/jhteeepy.default-release
export LIBREWOLF=$HOME/.librewolf/97xjozn4.default-default
# export EDITOR=vim
export EDITOR=nvim
export BROWSER=librewolf

export MANPATH="/usr/local/man:$MANPATH"
#
# Directories and shi
export GH=https://github.com/tuzgen

source $HOME/.zprofile_secret
# export ROFI="$HOME/.config/rofi"
# export I3="$HOME/.config/i3"
# export TMUX="$HOME/.config/tmux"
# export NVIM="$HOME/.config/nvim"
