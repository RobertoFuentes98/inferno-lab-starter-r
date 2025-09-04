#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
echo "[*] Iniciando Minikube..."
minikube start
echo "[*] Desplegando Inferno..."
kubectl apply -f inferno.yaml
echo "[*] Esperando pod listo..."
kubectl -n inferno rollout status deploy/inferno
echo "[*] Obteniendo URL del servicio..."
URL="$(minikube service inferno -n inferno --url)"
echo "[*] Abre esta URL en tu navegador:"
echo "$URL"
