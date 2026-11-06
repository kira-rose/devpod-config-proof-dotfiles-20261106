#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$HOME/.config/devpod-proof"
cp "$root/proof-alias" "$HOME/.config/devpod-proof/alias"
printf 'DOTFILES_REVISION=%s\n' "$1" > "$HOME/.config/devpod-proof/revision"
printf '# devpod proof dotfiles\nexport DEVPOD_DOTFILES_LOADED=yes\n' >> "$HOME/.bashrc"
