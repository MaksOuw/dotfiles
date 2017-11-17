alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias dps='docker ps --format "table {{.Names}}\t{{.Image}}\t{{.ID}}\t{{.Status}}\t{{.RunningFor}}\t{{.Ports}}"'
alias docker-yolo='docker rm -fv $(docker ps -aq)'
alias docker-yolo++='docker rm -fv $(docker ps -aq) && docker system prune'
alias top='htop'
alias sba='source ~/.bashrc'