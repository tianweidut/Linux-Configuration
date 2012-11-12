#! /bin/bash
#rm -rf ~/.vimrc
#rm -rf ~/.vim/
sudo apt-get install ttf-dejavu
cp ./_vimrc ~/.vimrc
mkdir ~/.vim/
cp -p -R ./vimfiles/** ~/.vim/
