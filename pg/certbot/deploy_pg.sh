#!/bin/sh

# chown certs so pg can access them
cp -Lr /etc/letsencrypt/live/${PG_DOMAIN}/cert.pem /pg_certificates/server.crt
cp -Lr /etc/letsencrypt/live/${PG_DOMAIN}/privkey.pem /pg_certificates/server.key
cp -Lr /etc/letsencrypt/live/${PG_DOMAIN}/privkey.pem /pg_certificates/server.key
chown 1001:1001 /pg_certificates -R
chmod 770 /pg_certificates/
