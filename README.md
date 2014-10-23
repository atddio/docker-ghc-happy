#Docker containers for Haskell - GHC 7.8.3, Cabal, XEmacs

If you had a Docker container with GHC, would that make you Happy?

This repository contains two kinds of environments for haskell
development: commandline and X
(with X2Go). Each with just GHC and CABAL, and development tools
separate. 




###Build it yourself

Instructions to be replaced by build script. 

###Use Autobuilt Dockerhub version

instructions to be modified.

## Credits


Inspired by https://github.com/atddio/docker-ghc . To do anything useful
one seems to need the haskell compiler, ghc and the alex and happy binaries on the path, so we build
that. We use hlint as well so that's in there too. We may add more, or
split out everything but alex and happy off in to a separate docker
container.

Following Herbert V. Riedel's PPAs

https://launchpad.net/~hvr/+archive/ubuntu/ghc

X2Go docker container - 
https://github.com/paimpozhil/DockerX2go , modified so it does not have
chrome
