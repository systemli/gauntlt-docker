FROM ubuntu:latest

MAINTAINER louis <louis@systemli.org>

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN \
  apt-get update && \
  apt-get dist-upgrade -y && \
  apt-get install -y make ruby1.9.3 curl nmap dnsutils
RUN gem install gauntlt

VOLUME ["/data"]

WORKDIR /data

CMD gauntlt
