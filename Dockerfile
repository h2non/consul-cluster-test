#
# A Docker image with ready-to-run Consul service
#
# VERSION 0.4.1
#

FROM ubuntu:14.04
MAINTAINER Innotech

# Installing dependencies...
RUN apt-get update
RUN apt-get install -y unzip wget

# Fetching Consul...
RUN cd /tmp/
RUN wget https://dl.bintray.com/mitchellh/consul/0.4.1_linux_amd64.zip -O consul.zip

# Installing Consul...
RUN unzip consul.zip
RUN chmod +x consul
RUN mv consul /usr/bin/consul

# Expose TCP ports
EXPOSE 8500
