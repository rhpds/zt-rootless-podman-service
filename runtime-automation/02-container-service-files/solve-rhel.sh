#!/bin/sh
set -e

# solve-rhel.sh for 02-container-service-files.adoc
# Execute the bash commands found in the content page.

mkdir -p ~/.config/containers/systemd/
touch ~/.config/containers/systemd/httpd.container
touch ~/.config/containers/systemd/httpd-data.volume
