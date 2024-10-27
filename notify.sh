#!/bin/bash

. ~/.profile
priority=$1
tags=$2
shift; shift
curl -H "X-Priority: $priority" -H "Tags: $tags" -d "$@" ntfy.sh/$NTFY_TOPIC
