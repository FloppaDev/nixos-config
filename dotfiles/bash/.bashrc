#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export PATH="/a/apps:$PATH"
export PATH="/home/floppa/.cargo/bin:$PATH"
export PATH="/home/floppa/.local/bin:$PATH"

export TERM="kitty"
export EDITOR="vim"
export BROWSER="firefox"

export XKB_DEFAULT_LAYOUT="en"

# No duplicates in shell history
export HISTCONTROL=ignoreboth:erasedups

bg_b="\[\033[44m\]"
bg_p="\[\033[45m\]"
bg_w="\[\033[47m\]"
b="\[\033[34m\]"
w="\[\033[0m\]"
tflag="$bg_b $bg_p $bg_w $bg_p $bg_b $w"
export PS1=" $tflag $b[\u \W]$w "

alias sudo='sudo '
alias n='nnn -eHTv'
alias where='which'
alias pony='ponysay -f rose'
alias run='steam-run '

xset r rate 180 50
xset s off
xset -dpms

set -o vi

# Map tablet to main screen.
xinput map-to-output 'Wacom Intuos PT S Pen' 'HDMI-A-0'
