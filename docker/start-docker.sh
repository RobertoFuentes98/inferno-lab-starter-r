#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
echo "[*] Levantando Inferno con Docker..."
docker compose up -d
echo "[*] Abre: http://localhost:4567"
