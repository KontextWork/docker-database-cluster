ALTER SYSTEM SET ssl_cert_file TO '/etc/postgresql/certificates/server.crt';
ALTER SYSTEM SET ssl_key_file TO '/etc/postgresql/certificates/server.key';
ALTER SYSTEM SET ssl TO 'ON';