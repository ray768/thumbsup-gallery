#!/bin/bash

docker rm -f thumbsup
docker run --name thumbsup -t -v /mnt/f/workspace-docker/thumbsup/input:/input:ro -v "$(pwd)/website:/output" -u $(id -u):$(id -g) ghcr.io/thumbsup/thumbsup thumbsup --config /input/config.json