#!/usr/bin/env bash
set -e

apt update -y && apt install -y jq

mkdir -p /workspace/runpod-slim/ComfyUI/user/default/workflows

presets=$(curl -fsSL "https://raw.githubusercontent.com/mattborn/inference/refs/heads/main/presets.json")

echo "$presets" | jq -c '.[0].files[]' | while read -r file; do
  src=$(echo "$file" | jq -r '.src')
  dest=$(echo "$file" | jq -r '.dest')

  filename=$(basename "$src" | cut -d'?' -f1)

  if [[ "$filename" != *.json ]]; then
    [[ "$filename" == *"nsfw"* && "$1" != "--nsfw" ]] && continue
    [[ "$filename" != *"nsfw"* && "$1" == "--nsfw" ]] && continue
  fi

  [[ -f "$dest/$filename" ]] && continue

  echo "Downloading $src → $dest/$filename"
  wget -q --show-progress -O "$dest/$filename" "$src"
done

echo "Done."
