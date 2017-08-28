# ~/.bash_aliases is sourced by ~/bashrd

# Colors from askubuntu.com
reset=$(tput sgr0)
bold=$(tput bold)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
user_color=$blue

# User Prompt Style. Use powerline-go if installed, otherwise use ANSI prompt
if [[ -f ~/.powerline/powerline-go-linux-amd64 ]] && [[ "$TERM" != "linux" ]]; then
    mods="docker,venv,user,host,ssh,cwd,perms,hg,jobs,exit,root"
    function _update_ps1() {
        PS1="$(~/.powerline/powerline-go-linux-amd64 -modules $mods -colorize-hostname -error $?)"
    }
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
else
    PS1="\[$reset\]\[$cyan\][ \[$bold\]\[$user_color\]\u@\h\[$reset\]\[$green\] \w\[$cyan\] ]\[$reset\]\\$ "
fi

# Custom Aliases
alias lsl='ls -lhF'
alias lsa='ls -lhaF'
alias sys-update='sudo apt update && sudo apt upgrade -y'
alias clear-crash-log='sudo rm /var/crash/*'

# Ubuntu doesn't source ~/.local/bin but it's recommended to install user programs there
[[ -d ~/.local/bin ]] && export PATH="$PATH:$HOME/.local/bin"

# You may want to store any private environment variables in a seperate file
[[ -f ~/.private_keys ]] && . ~/.private_keys
