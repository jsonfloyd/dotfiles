# ~/.profile

# Running bash
if [ -n "$BASH_VERSION" ]; then
   # Include .bashrc if it exists
   if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
   fi
fi