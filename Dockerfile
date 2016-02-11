FROM debian:jessie
MAINTAINER dsheyp

RUN apt-get update && \
    apt-get install -y --force-yes vpnc && \
    apt-get clean
    
RUN mkdir /homes

COPY /etc/vpnc/default.conf /homes/jpp/server1_vpn.conf
  
VOLUME /homes