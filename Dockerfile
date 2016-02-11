FROM debian:jessie
MAINTAINER dsheyp

RUN apt-get update && \
    apt-get install -y --force-yes vpnc && \
    apt-get clean
    
RUN mkdir /homes
  
VOLUME /homes
