#!/bin/bash

PROJECT_NAME=docker-config
IMAGE_NAME=docker-config

MACHINE_PORT=7001
CONTAINER_PORT=7001

if [ ! -d "target" ]; then
    echo 'find target folder , ready to rm'
    rm -rf "${PROJECT_NAME}/target"
fi

mvn clean install -DskipTests -pl ${PROJECT_NAME} -am

docker stop ${IMAGE_NAME}
docker rm ${IMAGE_NAME}
docker rmi ${IMAGE_NAME}

cd ${PROJECT_NAME}

mvn package docker:build -DskipTests -DImageName=${IMAGE_NAME} -DExposePort=${CONTAINER_PORT}

docker run -t -i -d -p ${MACHINE_PORT}:${CONTAINER_PORT} -h ${IMAGE_NAME} --name ${IMAGE_NAME} ${IMAGE_NAME}:latest

cd ../