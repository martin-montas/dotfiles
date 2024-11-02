# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export PATH=/usr/sbin/:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
export PATH=:/home/william//bin:/usr/sbin/:/home/william/bin:/usr/sbin/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games/
export DOCKER_CONTENT_TRUST=1
export DOCKER_HOST=unix:///run/user/1000/docker.sock
export LS_COLORS=$LS_COLORS:'di=30;41'
export DOCKER_CONTENT_TRUST=0
export EDITOR=nvim
export VISUAL=nvim
export PATH=$PATH:~/go/bin
ZSH_THEME="robbyrussell"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(
    git zsh-autosuggestions zsh-syntax-highlighting
    systemd
)
source $ZSH/oh-my-zsh.sh
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
alias em='emacsclient -c -a ""'
alias v='nvim'
alias ls='ls --color=auto' 
alias l='ls --color=auto -la'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -la'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias tm='tmux'
alias ms='msfconsole'
alias venv='source /home/william/personal/python/sysadmin-projects/admin-scripts-env/bin/activate'

alias sys='systemctl'
alias srx='web_search srx'

ZSH_WEB_SEARCH_ENGINES=(srx "https://searx.be/search?q=")

# Custom widget to paste from clipboard
function zle-paste-clipboard() {
    LBUFFER+=$(xclip -selection clipboard -o)
}

# Bind the custom widget to the 'p' key in vi command mode
zle -N zle-paste-clipboard
bindkey -M vicmd 'p' zle-paste-clipboard


alias startvm1="VBoxManage startvm {455b1447-605f-4ab7-b570-a5e0de8d5256} -type headless" 
alias disablevm1="VBoxManage controlvm {455b1447-605f-4ab7-b570-a5e0de8d5256} savestate" 

alias startvm2="VBoxManage startvm {57c27a92-8454-437b-ab2e-4dea46bc5ffb} --type headless" 
alias disablevm2="VBoxManage controlvm {57c27a92-8454-437b-ab2e-4dea46bc5ffb} savestate" 

alias startvm3="VBoxManage startvm {6b906888-7e1f-4b03-8c9a-e3a35bc58c1f} --type headless" 
alias disablevm3="VBoxManage controlvm {6b906888-7e1f-4b03-8c9a-e3a35bc58c1f} savestate" 

alias current_vm_start="VBoxManage startvm {36e6dc2d-2a74-4292-a140-c9c7825cc352} --type headless"
alias current_vm_end="VBoxManage controlvm {36e6dc2d-2a74-4292-a140-c9c7825cc352} savestate"


# disables caps lock for nvim
setxkbmap -option caps:escape

function f() {
    local DIR
    DIR=$(find . -type d | fzf)
    cd "$DIR" || return 1
}


# eval "$(starship init zsh)"
fortune | cowsay 

