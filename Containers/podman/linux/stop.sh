#!/bin/bash

CONTAINER_ID=`podman ps | grep latex-srv`

if [ -z "$CONTAINER_ID" ]; then
	echo '[msg] latex-srv not running!'
	exit 0
fi

podman stop latex-srv 