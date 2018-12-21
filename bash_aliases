export GOROOT=/usr/local/go
export GOPATH=/Users/Raca/go
export GOBIN=$GOPATH/bin

alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias h='history'
alias a='bat'
alias l='ls -lrth'
alias tre='tree -L 2'
alias s='git status'
alias dif='git diff'
alias publicip='curl ipinfo.io/ip'

alias dps='docker ps --all --format "table {{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Ports}}"'
alias di='docker images'
alias dsp='docker system prune'
alias dis='docker images --format '{{.Size}}\t{{.Repository}}' | sort -r'
alias dn='docker network ls'
alias dv='docker volume ls'
alias dc="docker-compose"

alias k='kubectl'
alias ktx='kubectx'
alias kns='kubens'
alias ksys='k get pod --namespace kube-system'
alias ktl='kubetail'
