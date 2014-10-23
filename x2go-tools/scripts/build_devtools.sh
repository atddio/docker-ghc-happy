#!/bin/bash
#tool selection inspired in part by https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md
set -e # exit on error
set -u # exit on initialized variable

export LANG="en_US.UTF-8"
export PATH=/opt/cabal/1.20/bin:/opt/ghc/7.8.3/bin:$PATH
export BINARIES=haskell-devtools

#mv ~/.cabal/bin/* /usr/local/bin
cabal update
mkdir -p devtools-sandbox
cd devtools-sandbox

#structured haskell had a conflict with an http library used by one of the others

cabal sandbox init
cabal install structured-haskell-mode
mv .cabal-sandbox/bin/* $BINARIES

rm -rf .cabal-sandbox

cd ..
