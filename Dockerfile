FROM ubuntu:18.04
RUN useradd -ms /bin/bash dude
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "sudo"]
WORKDIR /home/dude/
COPY escapeRoom escapeRoom

RUN echo "root:escape" | chpasswd
RUN echo "dude:dude" | chpasswd
RUN sudo adduser dude sudo
RUN ["chmod", "-R", "ago-w" ,"escapeRoom"]
USER dude
ENTRYPOINT ["bash"]

