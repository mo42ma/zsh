# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mmattern/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#e export
export TERM="xterm-256color"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
# antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found

# Syntax highlighting bundle.
 antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell

# load powerlevel theme 
antigen theme bhilburn/powerlevel9k powerlevel9k

plugins=(virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv root_indicator background_jobs history time)
# Tell Antigen that you're done.
antigen apply

######### Additional Variables
export WORKON_HOME=~/virtualenvs
