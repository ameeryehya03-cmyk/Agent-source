#!/usr/bin/env bash
# Fetches the pinned, checksum-verified index.html and stages it as the only
# file in the static output directory. Fails the build on any byte mismatch.
set -euo pipefail
curl -fsSL "https://raw.githubusercontent.com/ameeryehya03-cmyk/Agent-source/0b83a0c9147e7b8a921bd832dde05daac10034c4/site/index.html" -o index.html
echo "3c817b7dc44307b518f55e3579b7b06edf44e4c809daf7ce8b924286a5db15cd  index.html" | sha256sum -c -
mkdir -p dist
mv index.html dist/index.html
