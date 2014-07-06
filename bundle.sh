#!/bin/bash

DIR=`dirname $0`;
cd "$DIR";
mkdir -p bundle;
cd bundle;

load_bundle() {
  local BUNDLE="$1";
  local REPO="$2";
  if [ -d "$BUNDLE" ]; then
    cd "$BUNDLE";
    git pull;
    cd ..;
  elif [ \! -z "$REPO" ]; then
    git clone "$REPO";
  fi;
}

load_bundle ctrlp.vim 'https://github.com/kien/ctrlp.vim';
load_bundle nerdtree 'https://github.com/scrooloose/nerdtree';
load_bundle vim-sensible 'https://github.com/tpope/vim-sensible';
load_bundle vim-rails 'https://github.com/tpope/vim-rails';
load_bundle vim-abolish 'https://github.com/tpope/vim-abolish';