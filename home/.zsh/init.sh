# ~/.zsh/init.sh

# Set alias definitions
if [ -f $CONF/alias.sh ]; then
   source $CONF/alias.sh
fi

# Set shell variables
if [ -f $CONF/export.sh ]; then
   source $CONF/export.sh
fi

# Set shell functions
if [ -f $CONF/functions.sh ]; then
   source $CONF/functions.sh
fi