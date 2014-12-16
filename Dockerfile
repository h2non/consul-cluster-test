#
# A Docker image with a ready-to-run Hydra server
#
# VERSION 0.2
#

FROM ubuntu:14.04
MAINTAINER  Innotech

RUN apt-get update
RUN apt-get install wget -y

RUN wget http://ppa.launchpad.net/chris-lea/libpgm/ubuntu/pool/main/libp/libpgm/libpgm-5.1-0_5.1.118-1chl1~precise1_amd64.deb
RUN wget http://ppa.launchpad.net/chris-lea/zeromq/ubuntu/pool/main/z/zeromq3/libzmq3_4.0.5-1chl1~trusty1_amd64.deb

# Install .deb packages
RUN dpkg -i libpgm-5.1-0_5.1.118-1chl1~precise1_amd64.deb
RUN dpkg -i libzmq3_4.0.5-1chl1~trusty1_amd64.deb
RUN ln -s /usr/lib/x86_64-linux-gnu/libzmq.so.4 /usr/lib/x86_64-linux-gnu/libzmq.so.3

# Expose TCP ports
EXPOSE 7771
EXPOSE 7772
EXPOSE 7777
EXPOSE 7701
