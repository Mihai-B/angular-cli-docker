FROM node:16.13.0-alpine

LABEL authors="Alejandro Such <alejandro.such@gmail.com> , Mihai Bob <mihai.m.bob@gmail.com>"

# Install python/pip
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

RUN apk update \
  && apk add --update alpine-sdk git \
  && npm install -g @angular/cli@11.2.10 \
  && apk del alpine-sdk python3 \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clean --force \
  && yarn cache clean \
&& sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd
