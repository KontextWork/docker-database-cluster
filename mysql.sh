#!/bin/bash
set -e

source .env
NETWORK=docker-database-cluster_dbs
docker run --rm --link mariadb:$MYSQL_DOMAIN -v $PWD:/workdir -e MYSQL_PWD="${MARIADB_ROOT_PASSWORD}" -it --network $NETWORK bitnami/mariadb:10.8 mysql -h $MYSQL_DOMAIN -u root --ssl --ssl-verify-server-cert
