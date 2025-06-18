#!/bin/bash

BASE_PRIORITY=200
MAX_LOAD_INT=199

LOAD_INT=$(awk '{ printf("%.0f\n", $1 * 100) }' /proc/loadavg)

if [ "$LOAD_INT" -gt "$MAX_LOAD_INT" ]; then
    LOAD_INT="$MAX_LOAD_INT"
fi

echo "$LOAD_INT" > /etc/keepalived/current_load
