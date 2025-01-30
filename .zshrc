# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

export GOPATH=$HOME/go
export PATH=/usr/sbin/:$PATH
export PATH=:/home/william//bin:/usr/sbin/:/home/william/bin:/usr/sbin/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games/
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/python-env/bin
export PATH=$PATH:/opt/zeek/bin
export PATH=$PATH:~/.cargo/bin/
export PATH=$PATH:$HOME/.local/bin
export PYTHONPATH=PYTHONPATH:/home/william/python-env/lib/python3.11/site-packages

export W3M_IMG_CMD="w3m-img"
export DOCKER_HOST=unix:///run/user/1000/docker.sock
export DOCKER_CONTENT_TRUST=1
export DOCKER_HOST=unix:///run/user/1000/docker.sock
#export LS_COLORS="di=0;41;33"
export DOCKER_CONTENT_TRUST=0
export EDITOR=nvim
export VISUAL=nvim
ZSH_THEME="gallois"

plugins=(
    zsh-autosuggestions
    systemd zoxide

)
source $ZSH/oh-my-zsh.sh
# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#

# Enable vi mode
bindkey -v
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias ls='ls --color=auto'
alias l='ls --color=auto -la'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias nb='newsboat'
alias tm='tmux'
alias ms='msfconsole'
alias py-env-a='source $HOME/python-env/bin/activate'
alias t='tgpt'
alias server='python3 -m http.server'


alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias update='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log'


# Custom widget to paste from clipboard
function zle-paste-clipboard() {
    LBUFFER+=$(xclip -selection clipboard -o)
}

# Bind the custom widget to the 'p' key in vi command mode
zle -N zle-paste-clipboard
bindkey -M vicmd 'p' zle-paste-clipboard

# makes the terminal faster 

alias metaen='vmrun -T ws start "$HOME/Metasploitable2-Linux/Metasploitable.vmx" nogui'
alias metasus='vmrun -T ws suspend "$HOME/Metasploitable2-Linux/Metasploitable.vmx"'

function f() {
    local match file line

    match=$(grep -rnI . | fzf)

    [ -z "$match" ] && return 1

    file=$(echo "$match" | cut -d':' -f1)
    line=$(echo "$match" | cut -d':' -f2)

    nvim +"$line" "$file"
}

eval "$(zoxide init zsh)"
