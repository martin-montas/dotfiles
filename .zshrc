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
export LS_COLORS="di=0;41;33"
export DOCKER_CONTENT_TRUST=0
export EDITOR=nvim
export VISUAL=nvim
ZSH_THEME="gallois"

plugins=(
    zsh-autosuggestions zsh-syntax-highlighting
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
xset r rate 320 50
alias startvm="VBoxManage startvm {455b1447-605f-4ab7-b570-a5e0de8d5256} -type gui" 
alias disvm="VBoxManage controlvm {455b1447-605f-4ab7-b570-a5e0de8d5256} savestate" 

alias metaenable="VBoxManage startvm {57c27a92-8454-437b-ab2e-4dea46bc5ffb} --type headless" 
alias metadisable="VBoxManage controlvm {57c27a92-8454-437b-ab2e-4dea46bc5ffb} savestate" 

alias startserver="VBoxManage startvm {5954f299-79b9-4201-9ccc-5fdf69e09b3c} --type headless"
alias disableserver="VBoxManage controlvm {5954f299-79b9-4201-9ccc-5fdf69e09b3c} savestate"

alias windowse="VBoxManage startvm {babb4e33-b6cc-4138-974c-59b4e245710d} --type headless"
alias windowsd="VBoxManage controlvm {babb4e33-b6cc-4138-974c-59b4e245710d} savestate"

alias vulnen="VBoxManage startvm {b9e46c1f-9d3c-41ba-9dc7-9a839fae827f} --type headless"
alias vulndis="VBoxManage controlvm {b9e46c1f-9d3c-41ba-9dc7-9a839fae827f} savestate"

function f() {
    local DIR
    DIR=$(find . -type d | fzf)
    cd "$DIR" || return 1
}

eval "$(zoxide init zsh)"
fortune | cowsay 


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
