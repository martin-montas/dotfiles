# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/bin:/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export PATH=$HOME/.cargo/bin:$PATH
export GOPATH=~/go/
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.dotbare

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color
export KUBECONFIG=$HOME/.kube/config
export EDITOR='nvim'
export DOTBARE_TREE="$HOME/dotfiles"
export MOZ_ENABLE_WAYLAND=1
export SDL_VIDEODRIVER=wayland
export LS_COLORS="di=94"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="rixius"
ZSH_THEME="fino-time"


plugins=(git systemd ufw ansible)

source $ZSH/oh-my-zsh.sh
# Initialize zoxide for Zsh
eval "$(zoxide init zsh)"
# User configuration


# the 2 are for ghostty
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"

bindkey "^M" accept-line
bindkey "^J" accept-line


alias vim='nvim'
alias v='nvim'
alias vi='nvim'
alias ts='tailscale'
alias em='emacs -nw'

alias ts='tailscale'
alias ll='eza --icons -l'    # long list
alias l='eza --icons -la'    # show hidden files
alias ls='eza --icons'    # show hidden files
alias lt='eza -T --icons'                               # tree view
alias dotbare="$HOME/.dotbare/dotbare"

fn() { ${EDITOR:-nvim} $(rg -n '.*' "$HOME/personal/slipbox" | fzf --layout=reverse --height 50% --ansi | sed -E 's/(.*):([]+):.*/\1 +\2/g'); }

alias gs='git status'

alias db='dotbare'

paste_from_clipboard() { LBUFFER+=$(wl-paste); }
zle -N paste_from_clipboard
bindkey -M viins '^P' paste_from_clipboard

export XDG_CURRENT_DESKTOP=sway
XDG_SESSION_TYPE=wayland
#eval "$(oh-my-posh init zsh)"
#eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/cinnamon.omp.json)"
bindkey -v
# export LS_COLORS="di=38;2;135;206;250"
bindkey '^[' vi-cmd-mode
export DOTBARE_DIR="$HOME/.dotfiles.git"
export DOTBARE_TREE="$HOME"
alias dotbare='git --git-dir=$DOTBARE_DIR --work-tree=$DOTBARE_TREE'

bindkey -v

# Ctrl+[ in Ghostty: switch to Vim command mode
bindkey -M viins '^[[91;5u' vi-cmd-mode
bindkey -M vicmd '^[[91;5u' vi-cmd-mode
alias db="dotbare"

[ -f "/home/william/.ghcup/env" ] && . "/home/william/.ghcup/env" # ghcup-env
fastfetch
