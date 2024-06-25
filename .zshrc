export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin:$HOME/go/bin:$HOME/.local/bin
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export FIREFOX=$HOME/.mozilla/firefox/jhteeepy.default-release
export EDITOR=vim

# Directories and shi
export GH=https://github.com/tuzgen

ZSH_THEME="af-magic"

CASE_SENSITIVE="false"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# use defaults
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh

# per user configuration (cannot modify /usr/share on MacOS)
source $HOME/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.local/share/fzf/key-bindings.zsh
source $HOME/.local/share/fzf/completion.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Aliases

function cdf {
	cd $(find $HOME/Development -maxdepth 1 -type d | fzf)
}
alias cdf=cdf
alias notes="nvim $HOME/Notes"
alias torrents="transmission-daemon --logfile ~/.local/log/transmission.log"
