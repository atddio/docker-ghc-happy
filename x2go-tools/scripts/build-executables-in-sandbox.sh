#!/bin/bash
#tool selection inspired in part by https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md
set -e # exit on error
set -u # exit on initialized variable

export LANG="en_US.UTF-8"
export PATH=/opt/cabal/1.20/bin:/opt/ghc/7.8.3/bin:$PATH
export BINARIES=haskell-devtools
export packages=$1

#mv ~/.cabal/bin/* /usr/local/bin
cabal update
mkdir -p devtools-sandbox
cd devtools-sandbox

cabal sandbox init
cabal install $packages 
mv .cabal-sandbox/bin/* $BINARIES

rm -rf .cabal-sandbox

cd ..
