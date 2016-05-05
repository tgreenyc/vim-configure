#!/bin/bash

brew install ctags

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

pushd $PWD

cd ~/.vim/bundle

git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/Raimondi/delimitMate.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/vim-airline/vim-airline.git

git config --global http.sslverify false
git config --global user.name "Tim Green"
git config --global user.email "timsgreen@gmail.com"
git config --global core.editor mvim

# Option 1 - Store credentials in plaintext on disk
git config --global credential.helper store

# Option 2 - Cache credentials for specified time
#git config --global credential.helper "cache --timeout=3600"

popd
cp $PWD/update.sh ~/.vim/bundle
chmod 700 ~/.vim/bundle/update.sh
cp $PWD/.vimrc ~/
cp $PWD/.gvimrc ~/
