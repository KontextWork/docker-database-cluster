#!/bin/sh

echo "Checking and renewing Let's Encrypt Certificates if needed... (`date`)"
CONTAINER_NAME=${COMPOSE_PROJECT_NAME}_${CERTBOT_SERVICE_NAME}
docker start $CONTAINER_NAME
docker logs $CONTAINER_NAME
