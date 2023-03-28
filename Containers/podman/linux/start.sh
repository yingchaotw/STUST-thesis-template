#!/bin/bash

CONTAINER_ID=`podman ps | grep latex-srv`

if [ -n "$CONTAINER_ID" ]; then
	echo '[msg] latex-srv is running!'
	exit 0
fi

PROJECT_DIR=`cd $(dirname $0)/../../..; pwd`
USER=`whoami`

podman run --name latex-srv -it --rm -w /home/$USER/thesis -v $PROJECT_DIR:/home/$USER/thesis -d stusthesis