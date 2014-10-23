FROM mostalive/ghc-cabal

RUN cabal install hdevtools 
RUN cabal install happy
RUN cabal install alex
RUN cabal install hlint
RUN mv ~/.cabal/bin/* /usr/local/bin
