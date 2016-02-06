FROM alpine:3.3

MAINTAINER Ianus IT GmbH <it@ianus-it.de>

RUN apk add --update postgresql && rm -rf /var/cache/apk/* && mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql

USER postgres

CMD ["postgres", "-D", "/var/lib/postgresql/data"]
