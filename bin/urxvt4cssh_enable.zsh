#!/bin/sh

newterm=${1:-${HOME}/local/bin/urxvt4cssh.zsh}
awk -v newterm="$newterm" '
    BEGIN{FS=OFS="="}
    $1 == "terminal" { print "#"$0; $2 = newterm ; found = 1} {print} 
    END {if (! found) print "terminal", newterm}
' ~/.clusterssh/config.template > ~/.clusterssh/config
