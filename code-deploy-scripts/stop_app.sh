#!/bin/bash

if [ -d "/home/ubuntu/crabranch-proxy" ]; then
    cd /home/ubuntu/crabranch-proxy
    /usr/local/bin/docker-compose down || true
fi
