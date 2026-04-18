#!/usr/bin/env bash
# journalist — install/sync script
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
INSTALL_DIR="$HOME/.claude/skills/journalist"
STALE_ZIP="$HOME/.claude/skills/journalist.skill"

echo "📦 journalist install/sync"
echo "   source: $REPO_DIR"
echo "   target: $INSTALL_DIR"

[ -f "$STALE_ZIP" ] && { echo "🗑️  removing stale $STALE_ZIP"; rm "$STALE_ZIP"; }

if [ "${1:-}" = "--clean" ]; then
  echo "🧹 clean install"
  rm -rf "$INSTALL_DIR"
fi

mkdir -p "$INSTALL_DIR"
cp "$REPO_DIR/SKILL.md" "$INSTALL_DIR/"
[ -d "$REPO_DIR/scripts" ] && cp -R "$REPO_DIR/scripts" "$INSTALL_DIR/"

VERSION=$(grep -m1 "^version:" "$INSTALL_DIR/SKILL.md" | awk '{print $2}')
echo "✅ installed journalist v$VERSION — restart Claude Code to reload"
