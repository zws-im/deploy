#!/bin/env bash

xcaddy build --with github.com/caddy-dns/cloudflare
sudo setcap CAP_NET_BIND_SERVICE=+eip ./caddy
