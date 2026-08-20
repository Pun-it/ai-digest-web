#!/usr/bin/env bash
set -e
# Sync digests from the private source repo into this public mirror, then push.
cd "$(dirname "$0")/.."

SRC="${1:-/c/zz-misc/ai-digest/digests}"
if [ ! -d "$SRC" ]; then echo "Source digest dir not found: $SRC"; exit 1; fi

cp "$SRC"/*.md digests/
git add -A
if git diff --cached --quiet; then
  echo "Nothing to sync."
else
  git commit -m "sync digests $(date +%Y-%m-%d)"
  git push origin main
  echo "Pushed to https://github.com/Pun-it/ai-digest-web"
fi
