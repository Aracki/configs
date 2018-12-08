export GOROOT=/usr/local/go
export GOPATH=/Users/Raca/go
export GOBIN=$GOPATH/bin

. ~/.config/servers

source $HOME/.cargo/env

alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias c='clear'
alias h='history'

alias l='ls -lrth'
alias tre='tree -L 2'
alias s='git status'
alias dif='git diff'
alias a='bat'
alias publicip='curl ipinfo.io/ip'
