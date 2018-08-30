# ~/.bashrc

# Set directory for storing configuration files and cache
export CONF=$HOME/.zsh
export CACHE=$CONF/cache

# Bash has four prompts that can be customized
export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\n\$ '

# Apply a basic configuration
if [ -f $CONF/init.sh ]; then
   source $CONF/init.sh
fi

# Append to the history file, don't overwrite it
shopt -s histappend

# Update the LINES and COLUMNS values when changing the window size after each command
shopt -s checkwinsize

# Includes a "command not found" hook
if [ -f /usr/share/doc/pkgfile/command-not-found.bash ]; then
   source /usr/share/doc/pkgfile/command-not-found.bash
fi

# Enable programmable completion features
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi