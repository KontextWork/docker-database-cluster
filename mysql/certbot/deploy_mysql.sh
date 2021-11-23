#!/bin/sh

set -e

# chown certs so pg can access them
cp -Lr /etc/letsencrypt/live/${MYSQL_DOMAIN}/cert.pem /mysql_certificates/server.crt
cp -Lr /etc/letsencrypt/live/${MYSQL_DOMAIN}/privkey.pem /mysql_certificates/server.key
cp -Lr /etc/letsencrypt/live/${MYSQL_DOMAIN}/chain.pem /mysql_certificates/chain.crt
chown 1001:1001 /mysql_certificates -R
chmod 770 /mysql_certificates/
