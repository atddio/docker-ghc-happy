FROM ubuntu
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:hvr/ghc
RUN apt-get update && apt-get install -y ghc-7.8.3 cabal-install-1.20

ENV PATH /opt/cabal/1.20/bin:/opt/ghc/7.8.3/bin:$PATH
