#!/bin/sh

set -x

export PATH=$PATH:/opt/work

set -- tini -- "$@"

if [ "$(id -u)" = "0" ]; then
    set -- gosu johndoe "$@"
fi

exec "$@"
