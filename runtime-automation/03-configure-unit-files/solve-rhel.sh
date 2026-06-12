#!/bin/sh
set -e

# solve-rhel.sh for 03-configure-unit-files.adoc
# Execute the bash commands found in the content page.

tee -a /home/rhel/.config/containers/systemd/httpd.container << EOF
[Service]
Restart=always

[Container]
ContainerName=httpd
Image=docker.io/library/httpd
Label="io.containers.autoupdate=registry"
Environment=TZ=America/Vancouver
Environment=VERSION=docker
Volume=httpd-data.volume:/usr/local/apache2/htdocs:Z
PublishPort=8080:80/tcp

[Install]
WantedBy=default.target
EOF

tee -a /home/rhel/.config/containers/systemd/httpd-data.volume << EOF
[Volume]
User=rhel
Group=rhel
EOF
