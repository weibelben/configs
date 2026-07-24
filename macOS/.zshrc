source ~/.zshrc_common

# Homebrew-specific tooling
eval $(/opt/homebrew/bin/brew shellenv)
source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /opt/homebrew/opt/spaceship/spaceship.zsh

# add local ssh key for local and remote git access
ssh-add ~/.ssh/id_ed25519
