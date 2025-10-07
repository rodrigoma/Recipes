#!/bin/bash
# This script regenerates the recipes.json file from the markdown files in the recipes/ directory
# Run this whenever you add or remove recipe files

cd "$(dirname "$0")"
ls recipes/*.md | sed 's|recipes/||' | jq -R -s -c 'split("\n")[:-1]' > recipes.json
echo "recipes.json updated successfully!"
