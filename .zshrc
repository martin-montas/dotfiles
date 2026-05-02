# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color
export PATH=$PATH:~/.dotbare
export KUBECONFIG=/home/william/.kube/config
export EDITOR='nvim'
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

plugins=(git systemd)

source $ZSH/oh-my-zsh.sh
# Initialize zoxide for Zsh
eval "$(zoxide init zsh)"
# User configuration


alias vim='nvim'
alias v='nvim'
alias ts='tailscale'
alias vi='nvim'

alias ts='tailscale'
alias ll='eza -lh --icons --group-directories-first'    # long list
alias l='eza -la --icons --group-directories-first'    # show hidden files
alias ls='eza  --icons --group-directories-first'    # show hidden files
alias lt='eza -T --icons'                               # tree view
alias nines='k9s'

alias gs='git status'
alias k='kubectl'

alias runvm='sudo modprobe vmw_vmci; vmrun -T ws start "/home/william/vmware/Ubuntu-22.04-64bit-VMware/Ubuntu-22.04-64bit-VMware.vmx" nogui'
alias susvm='vmrun -T ws suspend "/home/william/vmware/Ubuntu-22.04-64bit-VMware/Ubuntu-22.04-64bit-VMware.vmx"'

alias runvm='sudo modprobe vmw_vmci; vmrun -T ws start "/home/william/vmware/Ubuntu-22.04-64bit-VMware/Ubuntu-22.04-64bit-VMware.vmx" nogui'
alias susvm='vmrun -T ws suspend "/home/william/vmware/Ubuntu-22.04-64bit-VMware/Ubuntu-22.04-64bit-VMware.vmx"'

paste_from_clipboard() { LBUFFER+=$(wl-paste); }
zle -N paste_from_clipboard
bindkey -M viins '^P' paste_from_clipboard


#eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/wholespace.omp.json)"
bindkey -v
alias ks="kubectl config --kubeconfig=$HOME/.kube/config use-context staging-context"
alias kp="kubectl config --kubeconfig=$HOME/.kube/config use-context production-context"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotbare:$PATH"
