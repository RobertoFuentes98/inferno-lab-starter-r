#!/usr/bin/env bash
set -euo pipefail
echo "[*] Eliminando recursos..."
kubectl delete ns inferno --ignore-not-found
echo "[*] (Opcional) Detener minikube con: minikube stop"
