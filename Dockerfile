FROM ubuntu:18.04
RUN useradd -ms /bin/bash escape
WORKDIR /home/escape
COPY escapeRoom escapeRoom
COPY initEscapeRoom.sh .
RUN ./initEscapeRoom.sh
RUN rm initEscapeRoom.sh
USER escape

ENTRYPOINT ["bash"]

