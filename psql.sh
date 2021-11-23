#!/bin/bash

source .env
NETWORK=docker-database-cluster_dbs
docker run --rm --link postgres:$PG_DOMAIN -e PGREQUIRESSL=1 -e PGPASSWORD=${POSTGRES_PASSWORD} -it --network $NETWORK bitnami/postgresql:latest psql -h $PG_DOMAIN -U postgres 