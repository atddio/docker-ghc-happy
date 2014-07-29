#Docker for GHC

Following Herbert V. Riedel's PPAs

https://launchpad.net/~hvr/+archive/ubuntu/ghc



###Build it yourself
```
git clone https://github.com/gdoteof/docker-ghc.git
cd docker-ghc
sudo docker build -t yourname/ghc .
sudo docker run yourname/ghc ghc --version
```

###Use Autobuilt Dockerhub version
```
sudo docker run gdoteof/ghc ghc --version
```
