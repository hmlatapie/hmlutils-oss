#!/bin/bash
lxc profile create gitlab-proxy
lxc profile edit gitlab-proxy < gitlabProfile.yaml

