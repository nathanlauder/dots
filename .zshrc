ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH="/Users/nlauder/.oh-my-zsh"

#path to scripts
export PATH=$PATH:~/scripts

export GITHUB_USERNAME="nathanlauder"

# install a theme
ZSH_THEME="nathanLauder"
#ZSH_HIGHLIGHT_STYLES[alias]='fg=#5bfbc2,bold'
#ZSH_HIGHLIGHT_STYLES[command]='fg=#5bfbc2,bold'
#ZSH_THEME="amuse"
#

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git bundler dotenv osx rake zsh-autosuggestions last-working-dir)
plugins=(
  git
  macos
  last-working-dir
  web-search
  history
  extract
  sublime
)
source $ZSH/oh-my-zsh.sh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
source ~/.zsh_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
