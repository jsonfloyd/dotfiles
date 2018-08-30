# ~/.zsh/alias.sh

# -------------------------------------------------------------------
# Basic
# -------------------------------------------------------------------

# Updating the Bash / ZSH configuration
if [ -n "$ZSH_VERSION" ]; then
    alias reload='source ~/.zshrc'
elif [ -n "$BASH_VERSION" ]; then
    alias reload='source ~/.bashrc'
fi

# Free space of connected drives in digestible format
alias df='df -h'

# Test ping once
alias ping='ping -c 1'

# First, they will connect to the existing session, if there is none, create a new one
alias tmux='tmux attach || tmux new-session'

# -------------------------------------------------------------------
# Sudo alias
# -------------------------------------------------------------------

alias su='sudo su -'
alias vim='nvim'

alias sudo='sudo -E '
alias svim='sudo -E nvim'
alias smc='sudo -E mc'

alias pacman='sudo pacman'
alias apt-get='sudo apt-get'

alias poweroff='sudo poweroff'
alias reboot='sudo reboot'

# -------------------------------------------------------------------
# Basic shortcuts for displaying the contents of a directory
# -------------------------------------------------------------------

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -la'

# -------------------------------------------------------------------
# Creating / Deleting directories
# -------------------------------------------------------------------

alias md='mkdir -p'
alias rd='rmdir'

# -------------------------------------------------------------------
# Navigation by catalogs
# -------------------------------------------------------------------

alias -- ...='../..'
alias -- ....='../../..'
alias -- .....='../../../..'
alias -- ......='../../../../..'
alias -- .......='../../../../../..'
alias -- ........='../../../../../../..'