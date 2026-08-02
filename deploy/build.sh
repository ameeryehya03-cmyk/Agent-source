#!/usr/bin/env bash
# Fetches the pinned, checksum-verified index.html and stages it as the only
# file in the static output directory. Fails the build on any byte mismatch.
set -euo pipefail
curl -fsSL "https://raw.githubusercontent.com/ameeryehya03-cmyk/Agent-source/67342915deda6d98fa1657abd33ee61156508557/site/index.html" -o index.html
echo "a0b5700c97d395d795cbd408ff6921956acc413b8ad68748aa8147b0f8537ab4  index.html" | sha256sum -c -
mkdir -p dist
mv index.html dist/index.html
