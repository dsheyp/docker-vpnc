FROM debian:jessie
MAINTAINER dsheyp

RUN apt-get update && \
    apt-get install -y --force-yes vpnc cifs-utils && \
    apt-get clean
    
RUN mkdir /homes

VOLUME /homes
