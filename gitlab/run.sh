#!/bin/bash
docker run --detach \
    --hostname=localhost \
    --publish 80:80 --publish 443:443 --publish 2222:22 \
    --restart always \
    --name gitlab-ce \
    -v gitlab-config:/etc/gitlab \
    -v gitlab-data:/var/opt/gitlab \
    -v gitlab-logs:/var/log/gitlab \
    gitlab/gitlab-ce:latest
