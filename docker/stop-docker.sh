#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
echo "[*] Deteniendo Inferno..."
docker compose down -v || true
echo "[*] Listo."
