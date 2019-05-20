FROM node:10-alpine
RUN apk add --no-cache wget ca-certificates git \
  && cd /tmp \
  && wget https://download.docker.com/linux/static/stable/x86_64/docker-18.09.6.tgz \
  && tar -xvf docker*.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -rf /tmp/*
