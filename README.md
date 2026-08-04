# configs
Various git, tmux, vim, and tooling configs. This repo helps bootstrap new machines with proper terminal tools.

Configure option/cmd backspace and forward word jumping in iTerm2 key bindings. 
https://stackoverflow.com/questions/12335787/with-iterm2-on-mac-how-to-delete-forward-a-word-from-cursor-on-command-line

ZSH tooling
https://github.com/marlonrichert/zsh-autocomplete
https://github.com/zsh-users/zsh-autosuggestions

### Terminal installations
Oh my zsh
Starship
Spaceship
Tmux
Fzf
Iterm2 (on mac)

### Shared usage

```shell
export CONFIGS_REPO=$(git rev-parse --show-toplevel)

mkdir -p ~/.config/herdr

ln -sf $CONFIGS_REPO/shared/.gitconfig ~/.gitconfig
ln -sf $CONFIGS_REPO/shared/.tmux.conf ~/.tmux.conf
ln -sf $CONFIGS_REPO/shared/.vimrc ~/.vimrc
ln -sf $CONFIGS_REPO/shared/.zshrc_common ~/.zshrc_common
ln -sf $CONFIGS_REPO/shared/herdr/config.toml ~/.config/herdr/config.toml
```

### macOS usage

```shell
ln -sf $CONFIGS_REPO/macOS/.zshrc ~/.zshrc
```

### debian usage (assuming ubuntu machine is the remote machine)

```shell
ln -sf $CONFIGS_REPO/debian/.zshrc ~/.zshrc
ln -sf $CONFIGS_REPO/debian/.ssh/rc ~/.ssh/rc
```
