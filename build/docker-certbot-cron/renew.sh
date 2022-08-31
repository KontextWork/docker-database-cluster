#!/bin/sh

cd /workdir
echo "Renewing Let's Encrypt Certificates... (`date`)"
CONTAINER_NAME=$COMPOSE_PROJECT_NAME-$CERTBOT_SERVICE_NAME
docker start $CONTAINER_NAME
docker logs $CONTAINER_NAME
