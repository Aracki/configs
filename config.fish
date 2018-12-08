export GOROOT=/usr/local/go
export GOPATH=/Users/Raca/go
export GOBIN=$GOPATH/bin

. ~/.config/servers

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

function manopt
    set -l cmd $argv[1]
    set -l opt $argv[2]
    if not echo $opt | grep '^-\.*' 2>&1 >> /dev/null
        if [ string length $opt = 1 ]
            set -l opt "-$opt"
        else
            set -l opt "--$opt"
        end
    end
  man "$cmd" | col -b | awk -v opt="$opt" -v RS= '$0 ~ "(^|,)[[:blank:]]+" opt "([[:punct:][:space:]]|$)"'
end
