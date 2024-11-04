#!/bin/bash
# Push notifications using ntfy.sh
# See https://ntfy.sh for details

NTFY_SERVER="ntfy.sh" 

if [ "$#" -lt 3 ]
then
  echo "Usage: $0 <priority> \"<tags>\" \"<message>\""
  exit 1
fi

if [ -z "$NTFY_TOPIC" ]
then
  . ~/.profile
  if [ -z "$NTFY_TOPIC" ]
  then
    echo 'Add \'export NTFY_TOPIC="<MY_SECRET_TOPIC>"\' environment variable definition to ~/.profile
    exit 1
  fi
fi

priority=$1
tags=$2
shift; shift

curl -H "X-Priority: $priority" -H "Tags: $tags" -d "$@" "$NTFY_SERVER/$NTFY_TOPIC"
