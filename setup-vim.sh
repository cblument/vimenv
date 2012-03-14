#!/usr/bin/env bash
mkdir -p ~/.vim/autoload mkdir -p ~/.vim/bundle

if [ ! -e ~/.vim/autoload/pathogen.vim ] ; then
  curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
fi

if [ ! `which git` ] ; then
  aptitude install git
fi

git clone git://github.com/godlygeek/tabular.git ~/.vim/autoload/tabular
git clone git://github.com/scrooloose/syntastic.git ~/.vim/autoload/syntastic
git clone https://github.com/rodjek/vim-puppet ~/.vim/autoload/puppet

cat <<EOF > ~/.vimrc
call pathogen#infect()
syntax on
filetype plugin indent on
EOF
