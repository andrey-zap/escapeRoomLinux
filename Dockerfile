FROM ubuntu:16.04
RUN useradd -ms /bin/bash escape
WORKDIR /home/escape
COPY escapeRoom escapeRoom
COPY config-files config-files
RUN chmod +x config-files/initSystem.sh
RUN chmod +x config-files/initEscapeRoom.sh
RUN config-files/initSystem.sh
RUN config-files/initEscapeRoom.sh
RUN rm -rf config-files
USER escape

ENTRYPOINT ["/bin/bash"]