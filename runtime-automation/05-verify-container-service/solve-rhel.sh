#!/bin/sh
set -e

# solve-rhel.sh for 05-verify-container-service.adoc
# Execute the bash commands found in the content page.

podman ps
systemctl --user status httpd --no-pager
curl http://localhost:8080
