ALTER SYSTEM SET ssl_cert_file TO '/etc/postgresql/certificates/live/pg.kontextwork.in/cert.pem';
ALTER SYSTEM SET ssl_key_file TO '/etc/postgresql/certificates/live/pg.kontextwork.in/privkey.pem';
ALTER SYSTEM SET ssl TO 'ON';