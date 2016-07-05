#!/usr/bin/env bash

# ��ǰĿ¼
basedir="$(cd "$1" && pwd -P)"

# nms �ļ�Ŀ¼
nmsdir="$basedir/work/decompile-1ae486b6/net/minecraft/server"
# ����Ŀ¼
workdir="$basedir/Spigot/Spigot-Server"

# Auto import
function import {
    file="${1}.java"
    base="$nmsdir/$file"
    target="$workdir/src/main/java/net/minecraft/server/$file"

    cp $base $target
}

# imports
import DataBits
import TileEntityEnderChest
import ChunkCache

# ���� diff
cd $workdir
git add . -A
git commit -a -m "Cat73 -> Auto import mc-dev"
git format-patch --no-stat -o "$basedir" -1
