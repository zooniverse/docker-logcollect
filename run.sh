#!/bin/bash

if [ -z "$LOGFILES" ]
then
    echo "ERROR: \$LOGFILES not specified in environment" >&2
    exit 1
fi

tail -qF $LOGFILES  | gelfcat "$@"
