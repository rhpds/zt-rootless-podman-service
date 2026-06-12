#!/bin/sh
set -e

# solve-rhel.sh for 04-start-httpd-container-service.adoc
# Execute the bash commands found in the content page.

systemctl --user daemon-reload
systemctl --user start httpd.service
