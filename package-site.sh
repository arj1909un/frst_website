#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DIST_DIR="$SCRIPT_DIR/dist"
ZIP_FILE="$SCRIPT_DIR/pragyabakery-site.zip"
PUBLIC_DIR="$SCRIPT_DIR/pragyabakery/public"
STYLE_FILE="$SCRIPT_DIR/pragyabakery/src/styles/style.css"

rm -rf "$DIST_DIR" "$ZIP_FILE"
mkdir -p "$DIST_DIR"

cp -r "$PUBLIC_DIR"/* "$DIST_DIR"/
cp -f "$STYLE_FILE" "$DIST_DIR"/

zip -r "$ZIP_FILE" dist >/dev/null

echo "Packaging complete. Output: $ZIP_FILE"
