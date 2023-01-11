#!/bin/bash
set -e

while [ -e /buildroot-2022.11.tar.xz ]; do
    tar xvJf /buildroot-2022.11.tar.xz
    rm /buildroot-2022.11.tar.xz
done
cd /buildroot-2022.11
exec "$@"
