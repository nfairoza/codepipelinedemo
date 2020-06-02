#!/bin/bash
echo "Building docker IMAGE "
#cd  ../dockerimage
echo "Switching directory " `pwd` 
echo "ls" `ls`

pgrep -f docker > /dev/null || echo "starting docker"
export IMAGE_NAME=239144702963.dkr.ecr.us-west-2.amazonaws.com/cicddemo
TAG=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')
export TAG=$TAG
docker ps
docker images
docker pull $IMAGE_NAME
docker build -f pipeline/dockerimage/Dockerfile -t $IMAGE_NAME:latest .
docker tag $IMAGE_NAME:latest $IMAGE_NAME:$TAG
