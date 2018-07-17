#!/bin/bash
imageName=rizalibnu/jsonplaceholder
containerName=jsonplaceholder

echo Building image...
docker build -t $imageName -f Dockerfile  .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
docker-compose up -d
#docker run -dit -p 5000:5000 --name $containerName $imageName

echo Prune images...
docker image prune -f
