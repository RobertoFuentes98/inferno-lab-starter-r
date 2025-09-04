# Laboratorio: Inferno listo para usar (Docker o Minikube)

Este paquete levanta **Inferno** (herramienta de pruebas para APIs FHIR) sin que necesites saber FHIR ni Kubernetes.
Solo sigue los pasos y abre el navegador.

> Resultado: una web local para hacer clic y explorar en `http://localhost:4567` (Docker) o una URL que te da Minikube.

---

## Opción A — Docker (más fácil)
**Requisitos:** Docker Desktop o Docker Engine.

### Pasos
1) Abre una terminal dentro de esta carpeta.
2) Ejecuta:
   ```bash
   ./start-docker.sh
   ```
3) Abre: **http://localhost:4567**
4) Para detener:
   ```bash
   ./stop-docker.sh
   ```

### ¿Qué hace?
- Descarga la imagen oficial de Inferno.
- Inicia el contenedor y expone el puerto 4567 a tu máquina.

---

## Opción B — Kubernetes con Minikube
**Requisitos:** `minikube` y `kubectl` instalados.

### Pasos
1) Abre una terminal dentro de esta carpeta.
2) Ejecuta:
   ```bash
   ./start-minikube.sh
   ```
3) El script mostrará una **URL**. Copia y pega en el navegador.
4) Para ver estado:
   ```bash
   ./status-minikube.sh
   ```
5) Para limpiar:
   ```bash
   ./stop-minikube.sh
   ```

### ¿Qué hace?
- Inicia Minikube.
- Crea un Namespace y despliega Inferno.
- Expone el servicio como **NodePort** y te devuelve una URL del tipo `http://127.0.0.1:XXXXX` u otra IP/puerto.

---

## Verificación rápida
- Debes ver una página web con la interfaz de Inferno.
- Si algo no carga:
  - Docker: ejecuta `docker ps` y verifica que el contenedor `inferno` está **Up**.
  - Minikube: ejecuta `./status-minikube.sh` y revisa que el `READY` del pod sea `1/1` y `STATUS` sea `Running`.

---

## Problemas comunes
- **El puerto 4567 está ocupado (Docker):** cierra otros servicios que usen 4567 o edita el puerto en `start-docker.sh`.
- **Minikube no arranca:** tu equipo necesita virtualización habilitada o un driver compatible. Cierra Docker Desktop si interfiere y vuelve a intentar `minikube start`.
- **Firewall o antivirus bloquea:** permite Docker/Minikube y el puerto que se muestra.

---

## Estructura del paquete
```
.
├─ README.md
├─ docker/
│  ├─ compose.yaml
│  ├─ start-docker.sh
│  └─ stop-docker.sh
└─ k8s/
   ├─ inferno.yaml         # Namespace + Deployment + Service (NodePort)
   ├─ start-minikube.sh
   ├─ status-minikube.sh
   └─ stop-minikube.sh
```

Listo. Ejecuta, abre el navegador y prueba.
# inferno-lab-starter
