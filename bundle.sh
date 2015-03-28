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
load_bundle vim-coffee-script 'https://github.com/kchmck/vim-coffee-script';
load_bundle vim-rebol 'https://github.com/prosumma/vim-rebol';
load_bundle vim-pgsql 'https://github.com/prosumma/vim-pgsql';
load_bundle vim-swift 'https://github.com/toyamarinyon/vim-swift';
load_bundle vim-windowswap 'https://github.com/wesQ3/vim-windowswap';

