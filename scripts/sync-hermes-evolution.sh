#!/bin/bash
# sync-hermes-evolution.sh
# 从 GitHub 同步进化包到 ~/.hermes/
set -euo pipefail

REPO_DIR="${REPO_DIR:-$(cd "$(dirname "$0")/.." && pwd)}"
HERMES_HOME="${HERMES_HOME:-$HOME/.hermes}"

echo "=== Hermes Evolution Kit Sync ==="
echo "Source: $REPO_DIR"
echo "Target: $HERMES_HOME"

# 1. Identity files
echo "[1/5] Syncing identity files..."
cp -v "$REPO_DIR/SOUL.md" "$HERMES_HOME/SOUL.md"
cp -v "$REPO_DIR/USER.md" "$HERMES_HOME/USER.md"
cp -v "$REPO_DIR/MEMORY.md" "$HERMES_HOME/MEMORY.md"
cp -v "$REPO_DIR/AGENTS.md" "$HERMES_HOME/AGENTS.md"

# 2. Skills
echo "[2/5] Syncing skills..."
rsync -av --delete "$REPO_DIR/skills/" "$HERMES_HOME/skills/"

# 3. Sessions (merge, don't overwrite)
echo "[3/5] Syncing sessions..."
cp -vn "$REPO_DIR/sessions/"*.jsonl "$HERMES_HOME/sessions/" 2>/dev/null || true
cp -vn "$REPO_DIR/sessions/"session_*.json "$HERMES_HOME/sessions/" 2>/dev/null || true

# 4. Memories
echo "[4/5] Syncing memories..."
mkdir -p "$HERMES_HOME/memories/"
rsync -av "$REPO_DIR/memories/" "$HERMES_HOME/memories/"

# 5. Config (merge only if target doesn't exist or user confirms)
echo "[5/5] Syncing config..."
if [ ! -f "$HERMES_HOME/config.yaml" ]; then
    cp -v "$REPO_DIR/config/config.yaml" "$HERMES_HOME/config.yaml"
    echo "⚠️  config.yaml installed. Edit to add API keys."
else
    echo "ℹ️  config.yaml exists, skipping (manual merge needed)"
fi

echo ""
echo "=== Sync Complete ==="
echo "Next steps:"
echo "  1. Edit $HERMES_HOME/config.yaml to add API keys"
echo "  2. Run: hermes skills list  (verify skills loaded)"
echo "  3. Run: hermes doctor        (verify config)"
echo "  4. Restart gateway if running"
