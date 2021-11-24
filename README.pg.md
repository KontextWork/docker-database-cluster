## Connect via cli as admin user

# Connect as admin user using

```bash
./psql.sh
```

## Create user

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
./pprov.sh myuser mydb
```

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
# use the password verysecret
./pprov.sh myuser mydb verysecret
```

## Test SSL

When forcing certificate validation

```
source .env
docker run --rm --link postgres:$PG_DOMAIN -e PG_DOMAIN=$PG_DOMAIN -e PGSSLROOTCERT=/etc/ssl/certs/ca-certificates.crt -e PGREQUIRESSL=1 -e PGSSLMODE=verify-full -e PGPASSWORD=${POSTGRES_PASSWORD} -it --network docker-database-cluster_dbs debian:bullseye bash
apt update
apt install -y postgresql
psql -h $PG_DOMAIN -U postgres
```

Verify that non ssl-mode is not working

```bash
psql -h $PG_DOMAIN -U postgres -e PGSSLMODE=disable
```
