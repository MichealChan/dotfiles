export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
alias colors="set | egrep 'COLOR_\\w*'"  # lists all the colors

alias ll="ls -Gahlp | sort -f -k 1.1,1.1r"
alias ..="cd .."
alias ...="cd ../.."
alias lsd='ls -l | grep "^d"'
alias lsf='ls -l | grep -v "^d"'
alias gerl="grep -rin --include=\"*.erl\""

alias v="vim"
alias m="mvim"
alias g="git"

alias php-cgi="phnd-urldecode-from-a-command-line/
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.stdin.read())"'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.stdin.read())"'

alias shs="python -m SimpleHTTP='--color=auto' GREP_COLOR='0;33'
export CLICOLOR=1 

export PROMPT_COMMAND='echo -ne "\\033]0;`basename ${PWD}`"; echo -ne "\\007"'

export EDITOR="vim"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# For colourful man pages (CLUG-Wiki style)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'"'"'
