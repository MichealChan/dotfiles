# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/michael/.prog/bin:/Users/michael/.cabal/bin:/Users/stwind/.rbenv/shims:/Users/stwind/.tmuxifier/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:/opt/local/bin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

alias ll="ls -Gahlp"
alias pbc="tr -d '\n' | pbcopy"
alias v="vim"
alias vi="vim"
alias m="mvim"
alias g="git"

export LANG=en_US.UTF-8
export EDITOR='vim'

export PROMPT_COMMAND='echo -ne "\\033]0;`basename ${PWD}`"; echo -ne "\\007"'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='0;33'

# For colourful man pages (CLUG-Wiki style)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


# C mpilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



#
# Qu Jing iTerm & Terminal Setup Script
# version 0.3
# Felix Ding
# July 12, 2014 @Costa
#
function start_qujing {
  export http_proxy='theironislands.f.getqujing.net:30735'
  export HTTPS_PROXY='theironislands.f.getqujing.net:30735'
}
#
# Qu Jing iTerm & Terminal Setup Script
# version 0.3
# Felix Ding
# July 12, 2014 @Costa
#
function start_qujing {
  export http_proxy='theironislands.f.getqujing.net:30735'
  export HTTPS_PROXY='theironislands.f.getqujing.net:30735'
}
#
# Qu Jing iTerm & Terminal Setup Script
# version 0.4
# Felix Ding
# Nov 18, 2014
#
function start_qujing {
  export http_proxy='http://theironislands.f.getqujing.net:38551'
  export HTTPS_PROXY='http://theironislands.f.getqujing.net:38551'
}
#
# Qu Jing iTerm & Terminal Setup Script
# version 0.4
# Felix Ding
# Nov 18, 2014
#
function start_qujing {
  export http_proxy='http://theironislands.f.getqujing.net:38551'
  export HTTPS_PROXY='http://theironislands.f.getqujing.net:38551'
}
#
# Qu Jing iTerm & Terminal Setup Script
# version 0.4
# Felix Ding
# Nov 18, 2014
#
function start_qujing {
  export http_proxy='http://theironislands.f.getqujing.net:38551'
  export HTTPS_PROXY='http://theironislands.f.getqujing.net:38551'
}
