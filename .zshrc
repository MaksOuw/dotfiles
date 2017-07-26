# Path to your oh-my-zsh installation.
export ZSH=/home/mcharron/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="maksouw"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gcz="git cz"
alias dc="docker-compose"
alias lxcls="sudo lxc-ls -f"
alias lxcgo="sudo lxc-start -n "
alias lxca="sudo lxc-attach -n "
alias dockdeb="sudo docker run -i -t debian /bin/bash"
alias ifconfig="ip a"
alias lla="ls -la"

alias gophp71="sudo ln -sfn /usr/bin/php7.1 /etc/alternatives/php"
alias gophp70="sudo ln -sfn /usr/bin/php7.0 /etc/alternatives/php"
alias gophp56="sudo ln -sfn /usr/bin/php5.6 /etc/alternatives/php"

alias gopython2="sudo ln -sfn /usr/bin/python2 /usr/bin/python"
alias gopython3="sudo ln -sfn /usr/bin/python3 /usr/bin/python"

export VISUAL=vim
export EDITOR="$VISUAL"

DISABLE_UPDATE_PROMPT=true
alias doc='docker-compose'
alias tools='docker-compose run --rm tools'
alias fixTV='sudo teamviewer daemon stop; sudo teamviewer daemon start;'
alias goopenjdk='ln -fs /etc/alternatives/java /usr/bin/java'
alias portainer='docker start $(docker ps -aqf name=gracious_lewin)'
alias dps='docker ps --format "table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}\t{{.RunningFor}}\t{{.Ports}}"'
alias drm='docker rm -vf $1'

# Tiny Care Terminal
export TTC_SAY_BOX="llama"
export TTC_REPOS='~/Projets/inao,~/Projets/vanao,~/Projets/reprise-donnees'
export TTC_REPOS_DEPTH=2
export TTC_WEATHER='Vertou'
export TTC_CELSIUS=true
export TTC_APIKEYS=false
export TTC_UPDATE_INTERVAL=2

dex() {
    local CONTAINER_NAME="$1"
    local COMMAND="bash"

    if [ "$#" -gt 1 ]; then
        COMMAND=$(echo "$@" | cut -d' ' -f2-)
    fi

    docker exec -ti "${CONTAINER_NAME}" ${COMMAND}
}

