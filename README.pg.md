## Connect via cli as admin user

# Connect as admin user using

```bash
./psql.sh
```

## Create user

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
./puser.sh myuser mydb
```

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
# use the password verysecret
./puser.sh myuser mydb verysecret
```
