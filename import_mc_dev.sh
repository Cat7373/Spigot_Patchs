#!/usr/bin/env bash

# 当前目录
basedir="$(cd "$1" && pwd -P)"

# nms 文件目录
nmsdir="$basedir/work/decompile-1ae486b6/net/minecraft/server"
# 工作目录
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

# 生成 diff
cd $workdir
git add . -A
git commit -a -m "Cat73 -> Auto import mc-dev"
git format-patch --no-stat -o "$basedir" -1
