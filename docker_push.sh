#!/bin/bash
docker logout
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t sjk5766/express:0.0.1 .
docker tag sjk5766/express:0.0.1 sjk5766/express:latest

docker push sjk5766/express:0.0.1
docker push sjk5766/express:latest

#docker login -u YOUR_USERNAME -p YOUR_PASSWORD

#docker build -t outsideris/demo:0.0.1 .

#docker tag outsideris/demo:0.0.1 outsideris/demo:latest

#docker push outsideris/demo:0.0.1
#docker push outsideris/demo:latest
