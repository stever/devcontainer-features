#!/bin/bash

# This test file will be executed against an auto-generated devcontainer.json that
# includes the 'caddy-plus' feature with no options.
#
# Eg:
# {
#    "image": "<..some-base-image...>",
#    "features": {
#      "hasura-cli": {}
#    }
# }

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "version" bash -c "hasura | grep 'GraphQL commands:'"

# Report results
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults