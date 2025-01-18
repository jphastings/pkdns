FROM alpine:3.20

COPY ./pkdns /usr/local/bin
COPY ./pkdns-cli /usr/local/bin

VOLUME [ "/pkdns" ]

# DNS server
EXPOSE 53
# DNS-over-HTTP server
EXPOSE 3000

CMD ["pkdns", "--pkdns-dir", "/pkdns", "--config", "/pkdns/config.toml"]
