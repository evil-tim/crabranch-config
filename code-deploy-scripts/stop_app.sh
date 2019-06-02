#!/bin/bash

if [ -d "/home/ubuntu/crabranch-config" ]; then
	cd /home/ubuntu/crabranch-config
	/usr/local/bin/docker-compose down || true
fi
