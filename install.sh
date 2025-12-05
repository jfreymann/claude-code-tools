#!/bin/bash

# Claude Code Tools Installer
# One command to set up your complete Claude Code environment
#
# Usage:
#   ./install.sh           # Interactive install
#   ./install.sh --all     # Install everything, no prompts
#   ./install.sh --link    # Symlink (auto-updates with git pull)
#   ./install.sh --copy    # Copy files (static, won't auto-update)

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="${HOME}/.claude"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Parse arguments
INSTALL_MODE="ask"
AUTO_YES=false

for arg in "$@"; do
    case $arg in
        --all)
            AUTO_YES=true
            ;;
        --link)
            INSTALL_MODE="link"
            ;;
        --copy)
            INSTALL_MODE="copy"
            ;;
        --help|-h)
            echo "Claude Code Tools Installer"
            echo ""
            echo "Usage: ./install.sh [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --all     Install everything without prompts"
            echo "  --link    Use symlinks (updates automatically with git pull)"
            echo "  --copy    Copy files (static installation)"
            echo "  --help    Show this help message"
            echo ""
            exit 0
            ;;
    esac
done

echo -e "${BLUE}Claude Code Tools Installer${NC}"
echo "=============================="
echo ""

# Check for Claude Code
if ! command -v claude &> /dev/null; then
    echo -e "${YELLOW}Warning: 'claude' command not found.${NC}"
    echo "Install Claude Code first: https://docs.anthropic.com/en/docs/claude-code"
    echo ""
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Create ~/.claude if needed
if [ ! -d "$CLAUDE_DIR" ]; then
    echo "Creating $CLAUDE_DIR..."
    mkdir -p "$CLAUDE_DIR"
fi

# Determine install mode
if [ "$INSTALL_MODE" = "ask" ]; then
    echo "Installation mode:"
    echo "  1) Symlink (recommended) - Updates automatically with 'git pull'"
    echo "  2) Copy - Static files, won't auto-update"
    echo ""
    read -p "Choose [1/2]: " -n 1 -r
    echo
    if [[ $REPLY =~ ^[2]$ ]]; then
        INSTALL_MODE="copy"
    else
        INSTALL_MODE="link"
    fi
fi

echo ""
echo -e "Install mode: ${GREEN}${INSTALL_MODE}${NC}"
echo ""

# Function to install a directory
install_dir() {
    local src="$1"
    local name="$2"
    local target="${CLAUDE_DIR}/${name}"
    
    if [ ! -d "$src" ]; then
        echo -e "${YELLOW}Skipping $name (not found)${NC}"
        return
    fi
    
    # Count items
    local count=$(find "$src" -maxdepth 1 -type f -name "*.md" | wc -l)
    
    if [ "$INSTALL_MODE" = "link" ]; then
        # Remove existing and create symlink
        if [ -e "$target" ] || [ -L "$target" ]; then
            rm -rf "$target"
        fi
        ln -s "$src" "$target"
        echo -e "${GREEN}✓${NC} Linked $name/ ($count items)"
    else
        # Create directory and copy files
        mkdir -p "$target"
        cp -r "$src"/* "$target"/ 2>/dev/null || true
        echo -e "${GREEN}✓${NC} Copied $name/ ($count items)"
    fi
}

# Install each component
echo "Installing components..."
echo ""

install_dir "${SCRIPT_DIR}/agents" "agents"
install_dir "${SCRIPT_DIR}/commands" "commands"
install_dir "${SCRIPT_DIR}/skills" "skills"

echo ""
echo -e "${GREEN}✅ Installation complete!${NC}"
echo ""

# Show what was installed
echo "Installed to: $CLAUDE_DIR"
echo ""

if [ "$INSTALL_MODE" = "link" ]; then
    echo "To update: cd ${SCRIPT_DIR} && git pull"
else
    echo "To update: git pull && ./install.sh --copy"
fi

echo ""
echo -e "${BLUE}Quick Start:${NC}"
echo "  cd /path/to/new/project"
echo "  claude"
echo "  /bootstrap"
echo ""
echo -e "${BLUE}Key Commands:${NC}"
echo "  /bootstrap     - Initialize new project with docs structure"
echo "  /sync          - Update project docs after work session"
echo "  /create-plan   - Plan complex features"
echo "  /debug         - Systematic debugging"
echo "  /whats-next    - Get direction on what to work on"
echo ""
