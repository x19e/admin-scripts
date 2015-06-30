#!/bin/bash

if [[ -z "$1" ]]; then
  echo "Usage: $0 <string>" >&2
  exit 1
fi

echo -n "$1" | md5sum | awk '{print $1}'
