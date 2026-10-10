#!/bin/bash
docker build -t idiotoflinux/pygopherd:latest .
docker tag idiotoflinux/pygopherd:latest idiotoflinux/pygopherd:amd64
docker push idiotoflinux/pygopherd:latest
docker push idiotoflinux/pygopherd:amd64