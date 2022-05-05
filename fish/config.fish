if status is-interactive
    # Commands to run in interactive sessions can go here
end

. ~/.aliases
. ~/.aliases-private
. ~/.servers

export GOROOT=/usr/local/go
export GOPATH=/Users/raca/go
export HOMEBREW_NO_AUTO_UPDATE=1

set PATH /opt/homebrew/bin $PATH
set PATH $PATH $HOME/.krew/bin

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

