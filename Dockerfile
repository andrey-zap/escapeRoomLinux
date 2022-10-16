FROM ubuntu:16.04
RUN useradd -ms /bin/bash escape
WORKDIR /home/escape
COPY escapeRoom escapeRoom
COPY initEscapeRoom.sh .
RUN chmod 755 initEscapeRoom.sh
RUN ./initEscapeRoom.sh
RUN rm initEscapeRoom.sh
USER escape

ENTRYPOINT ["bash"]

