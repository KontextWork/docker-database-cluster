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

read -p "Will drop database $DATABASE and remove all data. Also dropping user $USER. Are you sure (Y/y)? " -n 1
[[ ! $REPLY =~ ^[Yy]$ ]] && exit 1

source .env
NETWORK=database-cluster_dbs
CMD="docker run --rm --link mysql:$MYSQL_DOMAIN -e MYSQL_PWD=${MARIADB_ROOT_PASSWORD} -it --network $NETWORK bitnami/mariadb:10.3 mysql -h $MYSQL_DOMAIN -u root --ssl --ssl-verify-server-cert -e"

$CMD "DROP DATABASE ${DATABASE}"
$CMD "DROP USER ${USER} "

echo "- Removed user $USER"
echo "- Removed database $DATABASE"