#!/bin/bash

# Note to myself: run on my ARM64 Mac or a raspi
docker build -t idiotoflinux/pygopherd:arm64 .
docker push idiotoflinux/pygopherd:arm64