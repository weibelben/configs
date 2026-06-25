# configs
Various git, tmux, vim, and tooling configs. This repo helps bootstrap new machines with proper terminal tools.

Configure option/cmd backspace and forward word jumping in iTerm2 key bindings. 
https://stackoverflow.com/questions/12335787/with-iterm2-on-mac-how-to-delete-forward-a-word-from-cursor-on-command-line

ZSH tooling
https://github.com/marlonrichert/zsh-autocomplete
https://github.com/zsh-users/zsh-autosuggestions

### Terminal installations
Starship
Spaceship
Tmux
Fzf for reverse search
Iterm2
Oh my zsh

### Shared usage

```shell
ln -sf /Users/benw/git/configs/shared/.gitconfig ~/.gitconfig
ln -sf /Users/benw/git/configs/shared/.tmux.conf ~/.tmux.conf
ln -sf /Users/benw/git/configs/shared/.vimrc ~/.vimrc
```

### macOS usage

```shell
ln -sf /Users/benw/git/configs/macOS/.zshrc ~/.zshrc
```

### debian usage

```shell
ln -sf /Users/benw/git/configs/debian/.zshrc ~/.zshrc
```
