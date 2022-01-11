ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

#path to scripts
export PATH=$PATH:~/scripts

export GITHUB_USERNAME="nathanlauder"

# install a theme
ZSH_THEME="nathanLauder"

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
alias rc="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"

# Navigation
alias desk="cd ~/Desktop"
alias up="cd .."
alias down="cd ~/Downloads"
alias home="cd ~"
alias cs="cd ~/Desktop/CompSci"
alias ds="cd ~/Desktop/DataScience"
alias apps="/Applications"
alias site="cd ~/Desktop/ExtraProjects/Personal\ Website"
alias screenshots="cd ~/Desktop/Screenshots"
alias track="cd ~/Desktop/CompSci/599Capstone/final-project"
alias ta="cd ~/Desktop/CompSci/121\ CompSci\ Thinking/TAFiles"
alias extras="cd ~/Desktop/ExtraProjects"

# aliases
alias update="source ~/.zshrc"
alias yt="youtube"
alias py="python3"
#alias pip3="python3 -m pip"
#alias pip="pip3"
alias sleep="pmset sleepnow"
alias ftemp="/usr/local/bin/./osx-cpu-temp -F"
alias ctemp="/usr/local/bin/./osx-cpu-temp -C"
#alias spice="spicetify backup apply"
alias calc="bc"
alias caff="caffeinate -d"
alias qr="curl qrcode.show -d"


# npm aliases
alias start="npm start"
alias build="npm run build"
alias serve="npm run start:server"
alias start-client="npm run start-client"

# Applications
alias spot="open /Applications/Spotify.app"
alias ff="open /Applications/Firefox.app"
alias slack="open /Applications/Slack.app"
alias R="open /Applications/RStudio.app"

# seeing usage on the disk of the specific folder/path
alias storage="du -h -d1"
alias topten="history | commands | sort -rn | head"
# open current director in file explorer
alias owd="ofd" 
alias rd="rm -rf"

# git aliases
alias gf="git fetch"
alias ga="git add"
alias gcom="git commit -m"
alias gp="git push origin"
# branches
alias gst="git status" # branch status
alias gba="git branch -a"
alias gc="git checkout" # switch
alias gcb="git checkout -b" # create branch and switch to it
alias gbd="git branch -d" # branch delete
alias gbD="git branch -D" # force branch delete
alias gpd="git push origin --delete" # push commit of branch deletion

alias gd="git diff"
alias gpl="git pull origin"
alias unstage="git restore --staged"
alias gl="git log"
alias gm="git merge"
alias ggraph="git log --graph --pretty=\"%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\" --all"

# git pull request
[ -f "/Users/nathanlauder/.ghcup/env" ] && source "/Users/nathanlauder/.ghcup/env" # ghcup-env
