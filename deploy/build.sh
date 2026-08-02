#!/usr/bin/env bash
# Fetches the pinned, checksum-verified index.html and stages it as the only
# file in the static output directory. Fails the build on any byte mismatch.
set -euo pipefail
curl -fsSL "https://raw.githubusercontent.com/ameeryehya03-cmyk/Agent-source/5063b5892d22be304013f983d77af5875b4eb0b8/site/index.html" -o index.html
echo "75deb2c3b0b0c6c344eddf558c02feba78eb42d69f024b0a076172cefe4b1036  index.html" | sha256sum -c -
mkdir -p dist
mv index.html dist/index.html
