#!/bin/bash

# Dotfiles install script
# This script installs configuration files to their proper locations

set -e  # Exit on any error

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from: $SCRIPT_DIR"

# Create ~/.config directory if it doesn't exist
echo "Creating ~/.config directory if needed..."
mkdir -p ~/.config

# Install .zshrc
echo "Installing .zshrc..."
if [ -f ~/.zshrc ]; then
    echo "  Backing up existing ~/.zshrc to ~/.zshrc.backup"
    cp ~/.zshrc ~/.zshrc.backup
fi
cp "$SCRIPT_DIR/.zshrc" ~/.zshrc
echo "  ✓ .zshrc installed"

# Install starship.toml
echo "Installing starship.toml..."
if [ -f ~/.config/starship.toml ]; then
    echo "  Backing up existing ~/.config/starship.toml to ~/.config/starship.toml.backup"
    cp ~/.config/starship.toml ~/.config/starship.toml.backup
fi
cp "$SCRIPT_DIR/config/starship.toml" ~/.config/starship.toml
echo "  ✓ starship.toml installed"

echo ""
echo "Installation complete!"
echo ""
echo "Installed files:"
echo "  ~/.zshrc"
echo "  ~/.config/starship.toml"
echo ""
echo "Backups created (if files existed):"
echo "  ~/.zshrc.backup"
echo "  ~/.config/starship.toml.backup"
echo ""
echo "To apply changes, restart your terminal or run: source ~/.zshrc"
