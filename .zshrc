# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dotfiles

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="hyperzsh"

plugins=(git node npm history-substring-search)

# User configuration
export PATH="${HOME}/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
# Fix git log mojibake
# export TZ="Asia/Taipei"
export TZ="Europe/London"
export LC_ALL="zh_TW.UTF-8"
export LANG="zh_TW.UTF-8"
export LESSCHARSET="utf-8"
alias ls='ls -GFh'
alias cl='clear'

export HISTFILE=$HOME/.zhistor
export HOSTNAME="`hostname`"
export PAGER='less'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# NVM
export NVM_DIR=$HOME/.nvm
[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source $(brew --prefix nvm)/nvm.sh

export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS='di=94;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

[ -z "$TMUX" ] && export TERM=xterm-256color

# Base16 Shell
# if [ -z "$THEME" ]; then
#     export THEME="base16-"
# fi
# if [ -z "$BACKGROUND" ]; then
#     export BACKGROUND="tomorrow.dark"
# fi

BASE16_SHELL="$DOTFILES/.config/base16-shell/base16-monokai.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
