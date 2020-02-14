#!/bin/bash
ORIGIN=$PWD
SCRIPTPATH="$(
    cd "$(dirname "$0")" >/dev/null 2>&1 || exit
    pwd -P
)"
echo "Install for $USER only"
echo "Make sure to have ~/.local/bin in your path!"
cd "$SCRIPTPATH" || exit
mkdir -pv ~/.local/bin
chmod +x git-*
cp -v git-* ~/.local/bin
cd "$ORIGIN" || exit
