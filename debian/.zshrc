source ~/.zshrc_common

plugins=(zsh-autocomplete)

# Keep SSH agent forwarding working across herdr/tmux reconnects.
# A fresh SSH login gets a live forwarded $SSH_AUTH_SOCK; point a stable path
# at it. Long-lived multiplexer panes (herdr/tmux) inherit a stale/empty
# socket from the server. This uses the stable path and pick up the
# newest agent automatically on the next reconnect.
ssh_agent_link_refresh() {
    local link="$HOME/.ssh/agent.sock"
    if [[ -S "$SSH_AUTH_SOCK" && "$SSH_AUTH_SOCK" != "$link" ]]; then
        ln -sf "$SSH_AUTH_SOCK" "$link"
    fi
    [[ -S "$link" ]] && export SSH_AUTH_SOCK="$link"
}
ssh_agent_link_refresh
