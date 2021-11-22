#!/bin/bash

set -e
USER=$1
DATABASE=$2
PASSWORD=$3

if [ -z "$USER" ]
then
      echo "Error: Please pass the desired user as first paramter"
      exit 1
fi

if [ -z "$DATABASE" ]
then
      echo "Error:lease pass the desired database as second paramter"
      exit 1
fi

if [ -z "$PASSWORD" ]
then
      echo "Generating password (since not set as 3rd parameter)"
      PASSWORD=`tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1`
fi

docker-compose exec -u postgres postgres psql -c "CREATE USER ${USER} WITH LOGIN PASSWORD '${PASSWORD}'"
docker-compose exec -u postgres postgres psql -c "CREATE DATABASE ${DATABASE}"
docker-compose exec -u postgres postgres psql -c "ALTER DATABASE ${DATABASE} owner to ${USER}"
echo "- Created user $USER"
echo "- Created database $DATABASE"
echo "- Your Password is: $PASSWORD"