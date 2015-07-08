#!/usr/bin/env bash
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

if [ ! `which curl` ] ; then
  sudo apt-get install curl
fi

if [ ! -e ~/.vim/autoload/pathogen.vim ] ; then
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

if [ ! `which git` ] ; then
  sudo apt-get install git
fi

git clone git://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular
git clone git://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/rodjek/vim-puppet ~/.vim/bundle/puppet
git clone https://github.com/chase/vim-ansible-yaml.git ~/.vim/bundle/ansible

cat <<EOF > ~/.vimrc
execute pathogen#infect()
syntax on
filetype plugin indent on
EOF
