#! /bin/bash
#rm -rf ~/.vimrc
#rm -rf ~/.vim/
sudo apt-get install vim-gtk -y
sudo apt-get install ack-grep ctags -y

sudo pip install pylint
sudo pip install pyflakes
sudo pip install flake8

sudo npm install -g csslint
sudo npm install -g jslint
sudo npm install -g jshint
sudo npm install -g jsonlint
 
sudo rm -rf ~/.vim/
mkdir ~/.vim/
cp ./vimrc ~/.vimrc
cp ./bundles.vim ~/.vim/bundles.vim  
git clone https://github.com/tianweidut/vundle.git  ~/.vim

