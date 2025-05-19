#!/bin/bash

set -e

VERSION="0.45.2"
INSTALL_DIR="$HOME/Dev/ktlint/$VERSION"
KTLINT_URL="https://github.com/pinterest/ktlint/releases/download/$VERSION/ktlint"
ALIAS_LINE="alias ktal=\"$INSTALL_DIR/ktlint\""
SHELL_RC=""

echo "📦 Installing ktlint version $VERSION..."

# Detect shell config
if [[ $SHELL == */zsh ]]; then
  SHELL_RC="$HOME/.zshrc"
elif [[ $SHELL == */bash ]]; then
  SHELL_RC="$HOME/.bashrc"
else
  SHELL_RC="$HOME/.profile"
fi

# Download and install
mkdir -p "$INSTALL_DIR"
curl -sSL "$KTLINT_URL" -o "$INSTALL_DIR/ktlint"
chmod +x "$INSTALL_DIR/ktlint"

# Add alias if not already present
if ! grep -Fxq "$ALIAS_LINE" "$SHELL_RC"; then
  echo "" >> "$SHELL_RC"
  echo "# ktlint alias" >> "$SHELL_RC"
  echo "$ALIAS_LINE" >> "$SHELL_RC"
  echo "✅ Alias added to $SHELL_RC. Run 'source $SHELL_RC' or restart your terminal."
else
  echo "ℹ️ Alias already exists in $SHELL_RC"
fi

echo "✅ ktlint installed at: $INSTALL_DIR/ktlint"
echo "👉 You can now run it using: ktal"
