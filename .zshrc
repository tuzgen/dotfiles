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

# per user configuration (cannot modify /usr/share on MacOS)

# Check if the zsh-autosuggestions file exists before sourcing
if [ -f "$HOME/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source "$HOME/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# Check if the fzf key-bindings file exists before sourcing
if [ -f "$HOME/.local/share/fzf/key-bindings.zsh" ]; then
  source "$HOME/.local/share/fzf/key-bindings.zsh"
fi

# Check if the fzf completion file exists before sourcing
if [ -f "$HOME/.local/share/fzf/completion.zsh" ]; then
  source "$HOME/.local/share/fzf/completion.zsh"
fi

# Aliases
alias notes="nvim $HOME/Notes"
alias torrents="transmission-daemon --logfile ~/.local/log/transmission.log"
alias music="ncmpcpp"
alias bi="beet import -t"

alias r="source $HOME/.zprofile; source $HOME/.zshrc"
alias p="sudo pacman"

alias wok="cd $HOME/Development/jumpcloud-workstation/ && bin/wok"

alias ports="sudo lsof -nP -iTCP -sTCP:LISTEN"
alias k="kubectl"

alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias tr="transmission-remote tuzgen-pc:9091 -ne"
alias trl="transmission-remote tuzgen-pc:9091 -ne -l"
alias trst="transmission-remote tuzgen-pc:9091 -ne -st"

# TODO: make watch command compatible with zsh aliases
alias watch="watch -n 0.5 -d "

# autocompletion
source <(kubectl completion zsh)
