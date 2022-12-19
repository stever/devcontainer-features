#!/bin/sh
set -e

echo "Activating feature 'hasura-cli'"

# Install the Hasura CLI tool
curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | INSTALL_PATH=/usr/local/bin bash