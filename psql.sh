#!/bin/bash

source .env
#docker run --rm --link postgres:$PG_DOMAIN -e PGPASSWORD=${POSTGRES_PASSWORD} -it --network docker-database-cluster_pg bitnami/postgresql:latest psql -h $PG_DOMAIN -U postgres 
docker run --rm --link postgres:$PG_DOMAIN -e PGSSLMODE=verify-ca -e PGPASSWORD=${POSTGRES_PASSWORD} -it --network docker-database-cluster_pg bitnami/postgresql:latest psql -h postgres -U postgres 