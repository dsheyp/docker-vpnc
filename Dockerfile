FROM debian:jessie

ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE.UTF-8
ENV LC_ALL de_DE.UTF-8

MAINTAINER dsheyp

RUN apt-get update && \
    apt-get install -y --force-yes vpnc cifs-utils && \
    apt-get clean
    
RUN mkdir /homes

VOLUME /homes
