if status is-interactive
    # Commands to run in interactive sessions can go here
end

. ~/.aliases
. ~/.aliases-private
. ~/.aliases-private-functions

export GOPATH=/Users/raca/go
export HOMEBREW_NO_AUTO_UPDATE=1

set PATH /opt/homebrew/bin $PATH
set PATH $PATH $HOME/.krew/bin
set PATH $PATH /opt/homebrew/opt/libpq/bin:$PATH
set PATH $PATH $HOME/tenderly/tenderly-system/apps/proverator

[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

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

function h --wraps=history\ --show-time=\'\%d.\%h\ -\ \%H:\%M:\%S\ \' --description alias\ h=history\ --show-time=\'\%d.\%h\ -\ \%H:\%M:\%S\ \'
  history --show-time='%d.%h.%y - %H:%M:%S ' $argv
end

function kdf
    set -lx KUBECTL_EXTERNAL_DIFF "colordiff -N -u"
    kubectl diff -f $argv
end
alias kdif='kdf'
