FROM node:15.11.0-alpine

LABEL authors="Alejandro Such <alejandro.such@gmail.com> , Mihai Bob <mihai.m.bob@gmail.com>"

RUN apk update \
  && apk add --update alpine-sdk python git \
  && npm install -g @angular/cli@11.2.4 \
  && apk del alpine-sdk python \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clean --force \
  && yarn cache clean \
&& sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd
