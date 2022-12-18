#!/bin/sh
set -e

echo "Activating feature 'caddy-plus'"

# Install the xcaddy tool
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/gpg.key' | \
  sudo gpg --dearmor -o /usr/share/keyrings/caddy-xcaddy-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/xcaddy/debian.deb.txt' | \
  sudo tee /etc/apt/sources.list.d/caddy-xcaddy.list
sudo apt update
sudo apt install xcaddy

# Build caddy using xcaddy
xcaddy build --with github.com/greenpau/caddy-security
mv caddy /usr/local/bin/