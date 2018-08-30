# Set shell variables
export XENVIRONMENT=~/.Xresources
export EDITOR='nvim'                                    # Default editor
export TERM='xterm-256color'                            # Default terminal
export KEYTIMEOUT=1                                     # Remove delay (faster switch to Vim mode)
export GOPATH=~/.golang                                 # Set a GOPATH

# Set a directory with golang binary to $PATH
if [ -d $GOPATH/bin ]; then
    export PATH=$PATH:$GOPATH/bin
fi

# Set a directory with custom executable files to $PATH
if [ -d $HOME/.bin ]; then
    export PATH=$PATH:$HOME/.bin
fi

# Set a directory with executable files to $PATH
if [ -d $HOME/.config/composer/vendor/bin ]; then
    export PATH=$PATH:$HOME/.config/composer/vendor/bin
fi

# Ignore duplicate commands and/or to ignore commands that have leading whitespace
export HISTCONTROL=ignoredups:ignorespace

# Update the history file name
export HISTFILE=$CACHE/history

# Update the total number of lines in the history
export HISTSIZE=1000
export HISTFILESIZE=2000

# Default access rights for created files (755)
umask 022