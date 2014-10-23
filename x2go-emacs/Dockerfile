FROM mostalive/x2go-tools

RUN apt-get update && apt-get -y install emacs24
COPY dot-emacs-arnaud.el /home/dockerx/.emacs
COPY emacs-install-packages.sh /home/dockerx/
RUN su dockerx -c "/home/dockerx/emacs-install-packages.sh" 
RUN chown -R dockerx.dockerx /home/dockerx

