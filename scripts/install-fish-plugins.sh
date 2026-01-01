#!/usr/bin/env bash
set -euo pipefail

if ! command -v fish >/dev/null 2>&1; then
  echo "fish not installed, skipping fish plugin installation"
  exit 0
fi

echo "Installing fish plugins..."

fish -c '
if not functions -q fisher
  echo "Installing fisher..."
  curl -sL https://git.io/fisher | source
end

fisher install \
  jorgebucaran/fisher \
  jorgebucaran/autopair.fish \
  jethrokuan/z \
  edc/bass \
  meaningful-ooo/sponge
'
