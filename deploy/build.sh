#!/usr/bin/env bash
# Fetches the pinned, checksum-verified index.html and stages it as the only
# file in the static output directory. Fails the build on any byte mismatch.
set -euo pipefail
curl -fsSL "https://raw.githubusercontent.com/ameeryehya03-cmyk/Agent-source/74d59bbe8a8779ca69532b14097322d12269e801/site/index.html" -o index.html
echo "32a41cdb68923f75ea597931c7642d38088c19cb1033c44415918a1e7c0ea6be  index.html" | sha256sum -c -
mkdir -p dist
mv index.html dist/index.html
