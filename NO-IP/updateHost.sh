#!/bin/bash

export IP="34.55.41.46"
hosts=(
  "gitlab-mydormroom.ddns.net"
  "minio-mydormroom.ddns.net"
  "vscode-mydormroom.ddns.net"
)

for host in "${hosts[@]}"; do
  curl -s -u "${NOIP_USER}:${NOIP_PASS}" \
    "https://dynupdate.no-ip.com/nic/update?hostname=${host}&myip=${IP}"
done