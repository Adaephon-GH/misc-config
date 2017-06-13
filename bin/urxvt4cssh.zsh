#!/bin/zsh

# Inspired by https://unix.stackexchange.com/a/207017/52652

# debug info: dump parameters
#echo "paremeters: ${@}" > /tmp/start_urxvt4cssh.cmdline
# remove font settings from parametersr given by cssh
exec /usr/bin/urxvt ${@:#(-font|<->x<->)}
