#!/bin/bash

set -e

dataContainer=$1

shift 1

if [[ -z "$SPAWNCTL_ACCESS_TOKEN" ]]; then
    echo "SPAWNCTL_ACCESS_TOKEN is not set"
    exit 1
fi

spawnctl reset data-container "$dataContainer" $@ -q