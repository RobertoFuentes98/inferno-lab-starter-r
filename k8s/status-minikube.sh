#!/usr/bin/env bash
set -euo pipefail
echo "[*] Estado en namespace inferno:"
kubectl -n inferno get pods -o wide
kubectl -n inferno get svc inferno
