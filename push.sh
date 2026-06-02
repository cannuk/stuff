#!/usr/bin/env bash
# Commit all changes and push to GitHub (publishes to GitHub Pages).
# Usage:  ./push.sh ["commit message"]
set -euo pipefail
cd "$(dirname "$0")"

if [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to commit — working tree is clean."
  exit 0
fi

msg="${1:-Update site}"
git add -A
git commit -m "$msg"
git push origin main
echo "Pushed. Live shortly at https://sean.neden.name/stuff/"
