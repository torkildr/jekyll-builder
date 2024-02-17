#!/usr/bin/env bash

set -xe

podman build . \
  --tag jekyll-builder

