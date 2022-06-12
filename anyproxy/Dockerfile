FROM node:lts-alpine
ENV ANYPROXY_VERSION=4.1.3

EXPOSE 8001
EXPOSE 8002

RUN echo "#!/bin/sh" > /usr/bin/open && \
    echo "exit 0" >> /usr/bin/open &&\
    chmod +x /usr/bin/open

RUN npm install --location=global anyproxy@$ANYPROXY_VERSION

RUN mkdir /anyproxy

CMD anyproxy --intercept --ws-intercept
