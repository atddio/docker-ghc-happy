FROM mostalive/lxde-empty
 
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:hvr/ghc
RUN apt-get update && apt-get install -y ghc-7.8.3 cabal-install-1.20
# put tools in PATH of all users
RUN ln -s /opt/ghc/7.8.3/bin/* /usr/local/bin
RUN ln -s $(which cabal-1.20) /usr/local/bin/cabal

# Set the locale, otherwise we get invalid byte sequence errors, e.g in ghc-mod
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV PATH /opt/cabal/1.20/bin:/opt/ghc/7.8.3/bin:$PATH

ADD scripts/ scripts/
RUN scripts/build-executables-in-sandbox.sh alex happy hdevtools hlint ghc-mod hasktags

# put tools in PATH of all users, happy needed for structured-haskell
RUN mv /haskell-devtools/* /usr/local/bin/
RUN scripts/build-executables-in-sandbox.sh structured-haskell-mode
#RUN ln -s $(pwd)/build-devtools/haskell-devtools/* /usr/local/bin/
RUN mv haskell-devtools/* /usr/local/bin/

