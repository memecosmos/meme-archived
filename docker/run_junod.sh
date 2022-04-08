#!/bin/sh

if test -n "$1"; then
    cp -R "$1/.memed" /root
fi

mkdir -p /root/log
junod start --rpc.laddr tcp://0.0.0.0:26657 --trace
