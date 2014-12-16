#!/bin/bash

# discover files
export PATH=/opt/go/bin:$PATH
export GOROOT=/opt/go

ping -c 2 172.17.42.1
wget http://172.17.42.1:8080/hydra 

# Download dependencies
wget http://ppa.launchpad.net/chris-lea/libpgm/ubuntu/pool/main/libp/libpgm/libpgm-5.1-0_5.1.118-1chl1~precise1_amd64.deb
wget http://ppa.launchpad.net/chris-lea/zeromq/ubuntu/pool/main/z/zeromq3/libzmq3_4.0.5-1chl1~trusty1_amd64.deb

#echo "Running hydra"
#chmod +x hydra
#./hydra 

sleep 300

# Apply Hydra config
#cat $config_file > /etc/hydra/hydra.conf
