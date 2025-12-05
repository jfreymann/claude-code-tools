#!/bin/bash

# Claude Code Tools Uninstaller
# Removes installed components from ~/.claude/

set -e

CLAUDE_DIR="${HOME}/.claude"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "Claude Code Tools Uninstaller"
echo "=============================="
echo ""

echo -e "${YELLOW}This will remove:${NC}"
echo "  - ~/.claude/agents"
echo "  - ~/.claude/commands"
echo "  - ~/.claude/skills"
echo ""
echo "Project files (claude.md, docs/) in your projects are NOT affected."
echo ""

read -p "Continue? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 0
fi

echo ""

# Remove each component
for dir in agents commands skills; do
    target="${CLAUDE_DIR}/${dir}"
    if [ -e "$target" ] || [ -L "$target" ]; then
        rm -rf "$target"
        echo -e "${GREEN}✓${NC} Removed ${dir}/"
    else
        echo -e "${YELLOW}○${NC} ${dir}/ not found"
    fi
done

echo ""
echo -e "${GREEN}✅ Uninstall complete${NC}"
echo ""
echo "To fully remove, also run:"
echo "  rm -rf ~/.claude-code-tools"
echo ""
