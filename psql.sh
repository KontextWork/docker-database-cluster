#!/bin/bash
set -e
source .env
NETWORK=docker-database-cluster_dbs
#docker run --rm --link postgres:$PG_DOMAIN -e PGSSLROOTCERT=/etc/ssl/certs/ca-certificates.crt -e PGREQUIRESSL=1 -e PGSSLMODE=verify-full -e PGPASSWORD=${POSTGRES_PASSWORD} -it --network $NETWORK bitnami/postgresql:latest psql -h $PG_DOMAIN -U postgres 
docker run --rm --link postgres:$PG_DOMAIN -e PGSSLMODE=disable -e PGPASSWORD=${POSTGRES_PASSWORD} -it --network $NETWORK bitnami/postgresql:latest psql -h postgres -U postgres
