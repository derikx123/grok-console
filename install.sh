#!/usr/bin/env bash
set -euo pipefail
DEST="${HOME}/omniforge/projects/grok/console"
BASE="https://raw.githubusercontent.com/derikx123/grok-console/main"
mkdir -p "$DEST/public" "$DEST/agent/jobs"
cd "$DEST"
curl -fsSL "$BASE/package.json" -o package.json
curl -fsSL "$BASE/server.js" -o server.js
curl -fsSL "$BASE/public/index.html" -o public/index.html
curl -fsSL "$BASE/public/styles.css" -o public/styles.css
curl -fsSL "$BASE/public/app.js" -o public/app.js
echo "files landed in $DEST"
ls -la "$DEST" "$DEST/public"
echo "start with: node $DEST/server.js"
