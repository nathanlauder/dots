ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH="/Users/nathanlauder/.oh-my-zsh"

#path to scripts
export PATH=$PATH:~/scripts
PYTHONPATH="/usr/bin/python3"
export PYTHONPATH
export GITHUB_USERNAME="nathanlauder"

# install a theme
ZSH_THEME="nathanLauder"
#ZSH_HIGHLIGHT_STYLES[alias]='fg=#5bfbc2,bold'
#ZSH_HIGHLIGHT_STYLES[command]='fg=#5bfbc2,bold'
#ZSH_THEME="amuse"

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
source ~/.zsh_aliases
source ~/.zsh_nav

# z extension for navigating directories
. ~/z.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# colors
export CLICOLOR=1
# export LSCOLORS="Gxfxcxdxbxegedabagacad"
# Bold cyan dirs, magen symlinks, green sockets, grey pipes, bold red exe, blue cyan bg block special,
# brown on black char special, red on black exe with setuid, cyan on black exe with setgid, 
export LSCOLORS="GxfxcxhdxBxegedabagacad"
