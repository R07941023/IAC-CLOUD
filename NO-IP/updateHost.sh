#!/bin/bash

export IP="104.154.138.196"
hosts=(
  "gitlab-mydormroom.ddns.net"
  "minio-mydormroom.ddns.net"
  "vscode-mydormroom.ddns.net"
)

for host in "${hosts[@]}"; do
  curl -s -u "${NOIP_USER}:${NOIP_PASS}" \
    "https://dynupdate.no-ip.com/nic/update?hostname=${host}&myip=${IP}"
done