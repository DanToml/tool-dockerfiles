FROM alpine:latest
MAINTAINER "Danielle Tomlinson <dani@tomlinson.io>"

RUN apk --no-cache add \
  curl \
  rsync \
  openssh

RUN apk --no-cache add fabric --repository http://dl-3.alpinelinux.org/alpine/edge/testing/

ENTRYPOINT [ "fab" ]
