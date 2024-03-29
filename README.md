# WAT

A way of hosting postgres and mariadb for production. It includes

- LE based certificate management for official SSL support including renewal and database configuration
- periodic backups
- modular setup (you can pick the pieces you like via .env)
- management tools to provision / deprovision user
- only official database images / certbot images

## Usage / Setup

```bash
cp env.example .env
```

- change `POSTGRES_PASSWORD` to something proper
- change `PG_DOMAIN` to your liking
- change `MARIADB_ROOT_PASSWORD` to something proper
- change `MYSQL_DOMAIN` to your liking

```bash
cp cloudflare.ini .cloudflare.ini
chmod 600 .cloudflare.ini
```

Set your `dns_cloudflare_api_token` to the DNS api token

## Databases

- For `postgres` see `README.pg.md` for how to manage it
- For `mariadb` see `README.mariadb.md` for how to manage it

# Credits

The cron-cert-docker-image inspiration was taken from https://github.com/evgeniy-khist/letsencrypt-docker-compose - direct all the credits and cheers over there!
