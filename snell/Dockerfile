FROM tiny656/alpine-glibc

ENV SNELL_VERSION 3.0.1

RUN apk update \
  && apk add --no-cache \
    unzip \
    upx \
  && wget -O snell-server.zip https://github.com/surge-networks/snell/releases/download/v${SNELL_VERSION}/snell-server-v${SNELL_VERSION}-linux-amd64.zip \
  && unzip snell-server.zip \
  && upx --brute snell-server \
  && mv snell-server /usr/local/bin/

ENV SERVER_HOST 0.0.0.0
ENV SERVER_PORT 8388
ENV PSK=
ENV OBFS http
ENV ARGS=


COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
