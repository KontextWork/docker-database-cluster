#!/bin/sh

# chown certs so pg can access them
chown 999:999 /etc/letsencrypt/archive -R
chown 999:999 /etc/letsencrypt/live -R
chmod 777 /etc/letsencrypt/archive
chmod 777 /etc/letsencrypt/live
