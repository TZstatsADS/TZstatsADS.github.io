#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
TMP_DIR="/tmp/tzstats-jekyll-preview"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required but was not found."
  exit 1
fi

rm -rf "$TMP_DIR"
mkdir -p "$TMP_DIR"

# Copy site files but skip Bundler files to avoid dependency solver issues.
rsync -a --delete \
  --exclude Gemfile \
  --exclude Gemfile.lock \
  "$ROOT_DIR/" "$TMP_DIR/"

echo "Starting local preview at http://127.0.0.1:4000"
echo "Press Ctrl+C to stop."

docker run --rm \
  -p 4000:4000 \
  -p 35729:35729 \
  -v "$TMP_DIR":/srv/jekyll \
  -w /srv/jekyll \
  jekyll/jekyll:4 \
  sh -lc "gem install webrick -N >/dev/null && jekyll serve --host 0.0.0.0 --port 4000 --livereload --force_polling"
