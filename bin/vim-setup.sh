#!/bin/sh

BASE_DIR="$HOME/.vim"
PLUGIN_DIR="$BASE_DIR/bundle"
COLORS_DIR="$BASE_DIR/colors"
PLUGINS=(
  "kien/ctrlp.vim"
  "vim-airline/vim-airline"
  "vim-airline/vim-airline-themes"
  "VundleVim/Vundle.vim"
  "scrooloose/nerdtree"
  "tpope/vim-pathogen"
  "terryma/vim-multiple-cursors"
  "airblade/vim-gitgutter"
  "leafgarland/typescript-vim"
  "bigfish/vim-js-context-coloring"
  "neoclide/vim-jsx-improve"
  "posva/vim-vue"
)

mkdir -p $PLUGIN_DIR
mkdir -p $COLORS_DIR

wget https://raw.githubusercontent.com/noopkat/dotfiles/master/.vimrc -O $HOME/.vimrc
wget https://raw.githubusercontent.com/dracula/vim/master/colors/dracula.vim -O $COLORS_DIR/dracula.vim 

for PLUGIN in ${PLUGINS[@]}; do
   DIRNAME="$(basename $PLUGIN)"
   git clone https://github.com/$PLUGIN.git $PLUGIN_DIR/$DIRNAME
done

echo "vim setup done <3"
