FROM alpine:3.16

RUN apk update && \
    apk add --no-cache docker-cli docker-cli-compose

COPY renew.sh /etc/periodic/daily/renew_certs

RUN chmod +x /etc/periodic/daily/renew_certs

CMD ["crond", "-f", "-l", "0"]
