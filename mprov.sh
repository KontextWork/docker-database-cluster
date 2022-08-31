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
      PASSWORD=`tr -cd '[:alnum:]' < /dev/urandom | fold -w40 | head -n1`
fi

source .env
NETWORK=docker-database-cluster_dbs
CMD="docker run --rm --link mariadb:$MYSQL_DOMAIN -e MYSQL_PWD="${MARIADB_ROOT_PASSWORD}" -it --network $NETWORK bitnami/mariadb:10.8 mysql -h $MYSQL_DOMAIN -u root --ssl --ssl-verify-server-cert -e"

$CMD "CREATE USER ${USER} IDENTIFIED BY '${PASSWORD}' REQUIRE SSL"
$CMD "CREATE DATABASE ${DATABASE}"
$CMD "GRANT ALL PRIVILEGES ON ${DATABASE} . * TO ${USER}@'%'"
$CMD "FLUSH PRIVILEGES;"

echo "- Created user $USER"
echo "- Created database $DATABASE"
echo "- Your Password is: $PASSWORD"
