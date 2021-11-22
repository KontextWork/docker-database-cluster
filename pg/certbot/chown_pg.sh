#!/bin/sh

# chown certs so pg can access them
chown 999:999 /etc/letsencrypt/archive/pg.kontextwork.in/*