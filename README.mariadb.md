## Connect via cli as admin user

# Connect as admin user using

```bash
./mysql.sh
```

## Create user

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
./mprov.sh myuser mydb
```

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
# use the password verysecret
./mprov.sh myuser mydb verysecret
```

## Test SSL

When forcing certificate validation

```
source .env
docker run --rm --link mariadb:$MYSQL_DOMAIN -e MYSQL_DOMAIN=$MYSQL_DOMAIN -e MYSQL_PWD="${MARIADB_ROOT_PASSWORD}" -it --network docker-database-cluster_dbs debian:bullseye bash
apt update
apt install -y mariadb-client ca-certificates
mysql -h $MYSQL_DOMAIN -u root --ssl --ssl-verify-server-cert
```
