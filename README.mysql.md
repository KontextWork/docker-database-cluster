## Connect via cli as admin user

# Connect as admin user using

```bash
./mysql.sh
```

## Create user

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
./muser.sh myuser mydb
```

```bash
# create a user myuser and a DB mydb - grant myuser owner to mydb
# use the password verysecret
./muser.sh myuser mydb verysecret
```
