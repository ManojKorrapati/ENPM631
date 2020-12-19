FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y bind9 bind9utils bind9-doc

COPY bind9 /etc/default/bind9
COPY named.conf.options /etc/bind/named.conf.options
COPY named.conf.local /etc/bind/named.conf.local
COPY db.testwebsite.com /etc/bind/zones/db.testwebsite.com
COPY StartupScript StartupScript

CMD ["/bin/bash", "StartupScript"]

