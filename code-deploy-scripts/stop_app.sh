#!/bin/bash

if [ -d "/home/ubuntu/crabranch-config" ]; then
    cd /home/ubuntu/crabranch-config
    /usr/local/bin/docker-compose -p crabranch down || true
fi
