#!/bin/sh

set -x

set -- tini -- "$@"

if [ "$(id -u)" = "0" ]; then
    set -- gosu johndoe "$@"
fi

exec "$@"
