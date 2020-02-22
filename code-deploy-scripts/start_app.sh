#!/bin/bash

# start network if needed
if [[ -z $(docker network ls | grep crabranch_network) ]]; then
    docker network create crabranch_network
fi

# configure ecr login
aws configure set region `curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/[a-z]$//'`
$(aws ecr get-login --no-include-email)

# start
cd /home/ubuntu/crabranch-proxy
/usr/bin/docker pull 535425158818.dkr.ecr.ap-southeast-1.amazonaws.com/crabranch/fail2ban:latest
/usr/bin/docker pull nginx:latest
/usr/bin/docker pull jwilder/docker-gen:latest
/usr/bin/docker pull jrcs/letsencrypt-nginx-proxy-companion:latest
/usr/local/bin/docker-compose up -d