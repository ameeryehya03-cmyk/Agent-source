#!/usr/bin/env bash
# Fetches the pinned, checksum-verified index.html and stages it as the only
# file in the static output directory. Fails the build on any byte mismatch.
set -euo pipefail
curl -fsSL "https://raw.githubusercontent.com/ameeryehya03-cmyk/Agent-source/dd73f19557eac751decba5893f762aee32e56e09/site/index.html" -o index.html
echo "4c566f84f54081441ded758a303baa9ef24b08a765049b14be994d509ee9c59b  index.html" | sha256sum -c -
mkdir -p dist
mv index.html dist/index.html
