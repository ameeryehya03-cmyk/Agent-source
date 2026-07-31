#!/usr/bin/env bash
# Fetches the pinned, checksum-verified index.html and stages it as the only
# file in the static output directory. Fails the build on any byte mismatch.
set -euo pipefail
curl -fsSL "https://raw.githubusercontent.com/ameeryehya03-cmyk/Agent-source/9894f3256e05cbbf568256cdd87f7e96ad91cf97/site/index.html" -o index.html
echo "774c359606a0fc0982fcbe071575e957a8a485c76215c065fe2c3b44f6ee170e  index.html" | sha256sum -c -
mkdir -p dist
mv index.html dist/index.html
