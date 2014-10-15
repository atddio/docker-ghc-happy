#Docker with Haskell - GHC 7.8.3, Cabal and basic tools

If you had a Docker container with GHC, would that make you Happy?

Inspired by https://github.com/atddio/docker-ghc . To do anything useful
one seems to need the haskell compiler, ghc and the alex and happy binaries on the path, so we build
that. We use hlint as well so that's in there too. We may add more, or
split out everything but alex and happy off in to a separate docker
container.

Following Herbert V. Riedel's PPAs

https://launchpad.net/~hvr/+archive/ubuntu/ghc



###Build it yourself
```
git clone https://github.com/atddio/docker-ghc.git
cd docker-ghc
sudo docker build -t yourname/ghc .
sudo docker run yourname/ghc ghc --version
```

###Use Autobuilt Dockerhub version
```
sudo docker run mostalive/ghc ghc --version
```
