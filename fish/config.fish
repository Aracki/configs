export GOROOT=/usr/local/go
export GOPATH=/Users/Raca/go
export GOBIN=$GOPATH/bin

set -gx PATH $GOBIN $PATH

. ~/.servers
. ~/.aliases

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

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
