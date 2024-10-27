#!/bin/bash

. ~/.profile
curl -d "$@" ntfy.sh/$NTFY_TOPIC
