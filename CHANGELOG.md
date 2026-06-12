## Changelog — 2026-06-12

**Solve scripts — replaced placeholder logging with actual lab commands**

- **01-install-podman/solve-rhel.sh** — Runs `sudo dnf install -y podman`
- **02-container-service-files/solve-rhel.sh** — Creates `~/.config/containers/systemd/` directory and the `httpd.container` and `httpd-data.volume` unit files
- **03-configure-unit-files/solve-rhel.sh** — Writes the `[Service]`, `[Container]`, and `[Install]` sections into `httpd.container` and the `[Volume]` section into `httpd-data.volume`
- **04-start-httpd-container-service/solve-rhel.sh** — Runs `systemctl --user daemon-reload` and starts `httpd.service`
- **05-verify-container-service/solve-rhel.sh** — Runs `podman ps`, checks service status, and curls `localhost:8080`

**Setup scripts removed**

- Deleted all 5 `setup-rhel.sh` files (previously only contained placeholder progress logging)

**All solve scripts** now use `set -e` for fail-fast behavior.
