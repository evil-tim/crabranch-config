#!/bin/bash

# start network if needed
if [[ -z $(docker network ls | grep crabranch_network) ]]; then
    docker network create crabranch_network
fi

# start
cd /home/ubuntu/crabranch-proxy
/usr/local/bin/docker-compose up -d