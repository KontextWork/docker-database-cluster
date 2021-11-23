#!/bin/sh

# chown certs so pg can access them
cp -Lr /etc/letsencrypt/live/${PG_DOMAIN}/cert.pem /mysql_certificates/server.crt
cp -Lr /etc/letsencrypt/live/${PG_DOMAIN}/privkey.pem /mysql_certificates/server.key
chown 1001:1001 /mysql_certificates -R
chmod 770 /mysql_certificates/
