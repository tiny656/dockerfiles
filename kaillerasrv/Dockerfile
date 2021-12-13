FROM ubuntu:latest

ENV K_URL=http://www.kaillera.com/files/kaillerasrv-0.86-linux.tgz

ENV SERVER_NAME=kaillera_server
ENV LOCATION=China
ENV URL=
ENV MAX_USERS=10
ENV PORT=27888
ENV PUBLIC=0
ENV IP=

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 27888/tcp
EXPOSE 27888/udp

RUN apt-get update \
    && apt-get -y -q install wget lib32z1 lib32ncurses6 libstdc++6 \
    && rm -rf /var/lib/apt/lists/* \
    && wget -O kaillerasrv.tgz ${K_URL} \ 
    && tar zxvf kaillerasrv.tgz --strip=1 -C . \
    && rm -f kaillerasrv.tgz \
    && mv kaillerasrv /usr/local/bin/

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
