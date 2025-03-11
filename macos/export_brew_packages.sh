#!/bin/bash

# Define output file
OUTPUT_FILE="brew_packages.txt"

# Export installed formulae
echo "# Installed Homebrew Formulae" > "$OUTPUT_FILE"
echo "brew install $(brew list --formula | tr '\n' ' ')" >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"

# Export installed casks
echo "# Installed Homebrew Casks" >> "$OUTPUT_FILE"
echo "brew install --cask $(brew list --cask | tr '\n' ' ')" >> "$OUTPUT_FILE"

echo "Export completed. Packages saved in $OUTPUT_FILE."