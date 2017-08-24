alias docker-yolo='docker rm -fv $(docker ps -aq)'
alias docker-yolo++='docker rm -fv $(docker ps -aq) && docker system prune'
