#!/bin/bash

cd "$(dirname "$0")" || exit

if [ -d "./william/usr/lib" ]; then
    rm -rf "./AltServer/usr/lib"
fi
if [ -d "./dist" ]; then
    rm -rf "./dist"
fi

pyinstaller william.spec --clean
cp -R ./resources ./dist/william
mkdir -p "./william/usr/lib"

cp -R ./dist/william ./william/usr/lib
chmod -R 0775 william
dpkg-deb --build --root-owner-group william william.deb
