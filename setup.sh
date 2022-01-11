# Download iterm

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# syntax highlight (this install is finnicky)
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

# install git and set git config
brew install git

git config --global user.name "Nathan Lauder"
git config --global user.email "laudern42@gmail.com"
git config --global core.editor vim
git config --global color.ui auto

# python
brew install python

# vim on mac
export PATH=/usr/local/bin:$PATH
brew unlink vim
brew install vim && brew install macvim
brew link macvim

# node
brew install node

# move files
FILE=~/.zshrc
if [ ! -f "$FILE" ]; then
  echo "$FILE does not exist, moving .zshrc"
  mv .zshrc ~/
else
  echo "$FILE exists, deleting"
  rm ~/.zshrc
  echo "moving zshrc"
  mv .zshrc ~/
fi

FILE=~/.vimrc
if [ ! -f "$FILE" ]; then
  echo "$FILE does not exist, moving .vimrc"
  mv .vimrc ~/
else
  echo "$FILE exists, deleting"
  rm ~/.vimrc
  echo "moving vimrc"
  mv .vimrc ~/
fi

VIMDIR=~/.vim
if [ ! -d "$VIMDIR" ]; then
  echo "creating .vim directory"
  mkdir ~/.vim
fi

mv colors/ ~/.vim/
mv UltiSnips ~/.vim/

mv .gitignore ~/
mv nathanLauder.zsh-theme ~/.oh-my-zsh/themes/

echo "========================="
echo "open vim and run :PlugInstall"
vim
