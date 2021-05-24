FROM caddy:2.4.1-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.4.1-alpine

COPY Caddyfile cloudflare-origin-pull-ca.pem /etc/caddy/
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
