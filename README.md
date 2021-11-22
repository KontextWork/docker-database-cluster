# WAT

Our postgres and mysql cluster database

## Usage

```bash
cp env.example .env
```

change POSTGRES_PASSWORD to something proper

```bash
cp cloudflare.ini .cloudflare.ini
chmod 600 .cloudflare.ini
```

Set your `dns_cloudflare_api_token` to the DNS api token

## Databases

- For `postgres` see `README.pg.md` for how to manage it
