#!/bin/bash
export PYGOPHERD_HOSTNAME=127.0.0.1
docker run --name pygopherd \
	-p 70:70 \
	-e PYGOPHERD_HOSTNAME=$PYGOPHERD_HOSTNAME \
	-v $PWD/gophertstfil:/opt/gopher \
	-d idiotoflinux/pygopherd:amd64