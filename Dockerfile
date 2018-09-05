FROM ubuntu:18.04
RUN useradd -ms /bin/bash dude
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
WORKDIR /home/dude/
COPY escapeRoom escapeRoom
RUN ["chmod", "-R", "ago-w" ,"escapeRoom"]
USER dude
ENTRYPOINT ["bash"]

