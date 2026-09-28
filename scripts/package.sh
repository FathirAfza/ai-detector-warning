#!/usr/bin/env bash
# Kemas folder skill menjadi ai-detector-risk-check.skill (zip).
# Pakai: ./scripts/package.sh [folder-output]   (default: dist/)
set -euo pipefail

SKILL_NAME="ai-detector-risk-check"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="${1:-$REPO_ROOT/dist}"
mkdir -p "$OUT_DIR"
OUT_DIR="$(cd "$OUT_DIR" && pwd)"
OUT_FILE="$OUT_DIR/$SKILL_NAME.skill"

if [ ! -f "$REPO_ROOT/$SKILL_NAME/SKILL.md" ]; then
  echo "error: $SKILL_NAME/SKILL.md tidak ditemukan" >&2
  exit 1
fi

if ! command -v zip >/dev/null 2>&1; then
  echo "error: perintah 'zip' tidak tersedia" >&2
  exit 1
fi

rm -f "$OUT_FILE"
cd "$REPO_ROOT"
zip -r -X -q "$OUT_FILE" \
  "$SKILL_NAME/SKILL.md" \
  "$SKILL_NAME/references" \
  -x '*.DS_Store'

echo "Dibuat: $OUT_FILE"
unzip -l "$OUT_FILE"
