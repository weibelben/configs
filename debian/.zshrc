# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws kubectl zsh-autosuggestions)
SHOW_AWS_PROMPT=true
AWS_PROFILE_STATE_ENABLED=true

source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Eval and source specific tools
eval $(/opt/homebrew/bin/brew shellenv)
source /opt/homebrew/opt/spaceship/spaceship.zsh
eval "$(fzf --zsh)"

# Tooling aliases
alias ns="kubectl config view --minify --output jsonpath='{..namespace}'"
alias watch="watch " # allows for watch followed by other aliased cmds
alias klf="kubectl logs -f "
alias kc="kubectl"
alias tf="terraform "
alias gsd="git stash && git stash drop"

# Tool paralellism optimizations
alias make="make -j4"

# Spaceship Prompt Order Overrides
eval "$(starship init zsh)"
#export SPACESHIP_DOCKER_SHOW=false

bindkey "^X\\x7f" backward-kill-line
bindkey "^[[F" end-of-line
bindkey "^[[H" beginning-of-line

# autocomplete accept
bindkey '  ' autosuggest-accept
