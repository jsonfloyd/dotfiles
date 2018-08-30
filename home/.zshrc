# ~/.zshrc

# -------------------------------------------------------------------
# Basic
# -------------------------------------------------------------------

# Set directory for storing configuration files and cache
export ZSH_CONF=$HOME/.zsh

# Apply a basic configuration
if [ -f $ZSH_CONF/init.sh ]; then
   source $ZSH_CONF/init.sh
fi

# Set shell plugins
if [ -f $ZSH_CONF/plugins.sh ]; then
   source $ZSH_CONF/plugins.sh
fi

# -------------------------------------------------------------------
# ZSH History
# -------------------------------------------------------------------

# Adds the execution time of the command to the history
setopt EXTENDED_HISTORY

# Allow multiple sessions to add to the shared history
setopt APPEND_HISTORY

# When searching in history, it does not display cyclic commands
setopt HIST_FIND_NO_DUPS

# Delete duplicates when you reach $ HISTSIZE
setopt HIST_EXPIRE_DUPS_FIRST

# Ignore commands that start with spaces
setopt HIST_IGNORE_SPACE

# History becomes common between all sessions / terminals
setopt SHARE_HISTORY

# Do not write duplicate commands
setopt HIST_IGNORE_DUPS

# Adding commands to the history as you type, and not after the session ends
setopt INC_APPEND_HISTORY

# Remove extra spaces in the command line
setopt HIST_REDUCE_BLANKS

# -------------------------------------------------------------------
# ZSH Autocomplete
# -------------------------------------------------------------------

# Definition of hostname
local SHORT_HOST=${HOST/.*/}

# Automatic filling of the dump cache file for each host
local ZSH_COMPDUMP="$CACHE/acdump-${SHORT_HOST}-${ZSH_VERSION}"

# Auto-complete autocompletion
autoload -U compinit

# Dump cache file connection
compinit -i -d "${ZSH_COMPDUMP}"

# Ability to cycle through the required parameter
zstyle ':completion:*' menu select

# Auto-complete without register
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Allow completion of a word / phrase
setopt COMPLETE_IN_WORD

# When filling from the middle of the word, move the cursor to the end of the word
setopt ALWAYS_TO_END

# When using autocomplete, put the first option directly into the line
setopt MENU_COMPLETE

# Enable aliases to complete
setopt COMPLETE_ALIASES

# Display a cyclic vertical, not a horizontal menu
setopt LIST_ROWS_FIRST

# -------------------------------------------------------------------
# ZSH Key Bindings
# -------------------------------------------------------------------

# [Backspace] - Delete the character before the cursor
bindkey '^?' backward-delete-char

# [Delete] - Delete the character after the cursor
bindkey "${terminfo[kdch1]}" delete-char

# [Alt-^] - To the beginning of the line
bindkey '^[^' beginning-of-line

# [Alt-$] - At the end of the line
bindkey '^[$' end-of-line

# [Alt-W] - To the forward words
bindkey '^[w' forward-word

# [Alt-B] - To the beginning words
bindkey '^[b' backward-word

# [Alt-Shift-W] - Delete the word after the cursor
bindkey '^[W' kill-word

# [Alt-Shift-W] - Delete the word before the cursor
bindkey '^[B' backward-kill-word

# [Alt-d] - Clear the current line
bindkey "^[d" kill-whole-line

# [Alt-Shift-d] - Clear all to the end of the current line
bindkey "^[D" kill-line

# [Alt-k] - Previous command
bindkey "^[k" history-beginning-search-backward

# [Alt-j] - The next command
bindkey "^[j" history-beginning-search-forward

# [Alt-c] - Clear the screen
bindkey '^[c' clear-screen

# -------------------------------------------------------------------
# ZSH Other
# -------------------------------------------------------------------

# Enhancing zsh capabilities
setopt EXTENDED_GLOB

# Automatically detect directory paths
setopt AUTOCD

# You can enter comments beginning with #
setopt INTERACTIVE_COMMENTS

# Enable auto correct
# setopt CORRECT

# Disable auto correct
unsetopt correct_all

# Turn off the speaker
setopt NO_BEEP

# Message output when an error is detected in a word
SPROMPT="Error! Enter %r instead of %R? ([Y]es/[N]o/[E]dit): "

# We supplement the hidden files
_comp_options+=(globdots)