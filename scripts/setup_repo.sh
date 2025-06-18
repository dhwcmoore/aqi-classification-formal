#!/bin/bash
# setup_repo.sh - Generate AQI repo from C:\Users\Greg Moore

set -e

REPO_NAME="aqi-classification-formal"
BASE_DIR="$HOME"
TARGET="$BASE_DIR/$REPO_NAME"

mkdir -p "$TARGET"/{coq,ocaml,scripts,benchmark,paper}

# Move files
mv -v "$BASE_DIR"/*.v "$TARGET/coq/" 2>/dev/null || echo "No Coq .v files to move."
mv -v "$BASE_DIR"/*.ml "$TARGET/ocaml/" 2>/dev/null || echo "No OCaml .ml files to move."
mv -v "$BASE_DIR"/*.odt "$TARGET/paper/" 2>/dev/null || echo "No .odt files to move."
mv -v "$BASE_DIR"/*.sh "$TARGET/scripts/" 2>/dev/null || echo "No scripts to move."

# Create supporting files
cat > "$TARGET/README.md" <<EOF
# AQI Classification (Formal Verification)

This project formally verifies air quality index (AQI) classification boundaries using Coq and extracts verified OCaml code for runtime execution.
EOF

cat > "$TARGET/LICENSE" <<EOF
MIT License
EOF

cat > "$TARGET/.gitignore" <<EOF
_build/
*.cmo
*.cmi
*.cma
EOF

cd "$TARGET"
git init
git add .
git commit -m "Initial commit with staged files"
