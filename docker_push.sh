#!/bin/bash
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker build -t express:0.0.1 .
docker tag express:0.0.1 sjk5766/express:0.0.1
docker push sjk5766/express:0.0.1
