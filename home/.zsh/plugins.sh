# Connecting the Plugin Manager
source $ZSH_CONF/antigen.zsh

# Use oh-my-zsh's library
antigen use oh-my-zsh

# Powerline themes for ZSH
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Setting bullet-train
BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    custom
    dir
    git
    hg
    cmd_exec_time
)

BULLETTRAIN_TIME_SHOW=true
BULLETTRAIN_CONTEXT_SHOW=false

# BULLETTRAIN_PROMPT_CHAR="\$ "                 # Add a space at the beginning of the line
# BULLETTRAIN_PROMPT_ADD_NEWLINE=false          # Enter the command with a new line
# BULLETTRAIN_PROMPT_SEPARATE_LINE=false        # Add an extra blank line after each command

# BULLETTRAIN_CONTEXT_BG=('015')
# BULLETTRAIN_CONTEXT_FG=('000')

BULLETTRAIN_TIME_BG=('002')
BULLETTRAIN_TIME_FG=('000')

BULLETTRAIN_STATUS_ERROR_BG=('001')
BULLETTRAIN_STATUS_FG=('015')

BULLETTRAIN_DIR_BG=('008')
BULLETTRAIN_DIR_FG=('015')

BULLETTRAIN_GIT_BG=('000')
BULLETTRAIN_GIT_FG=('015')

# Custom options for wfxr/forgit
forgit_log=gloi
forgit_diff=gdi
forgit_add=gai
forgit_ignore=gii
forgit_restore=gcfi
forgit_clean=gcleani

# Enabled plugins
antigen bundle git
antigen bundle docker
antigen bundle fasd
antigen bundle sudo
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jimeh/zsh-peco-history
antigen bundle crazybooot/laravel-zsh-plugin
antigen bundle g-plane/zsh-yarn-autocompletions
antigen-bundle Tarrasch/zsh-bd
antigen bundle wfxr/forgit

# Run antigen
antigen apply