#!/usr/bin/env bash

# 当前目录
basedir="$(cd "$1" && pwd -P)"

# nms 文件目录 # TODO 自动找目标目录，省的每个版本都要手动改
nmsdir="$basedir/work/decompile-dca1ee0d/net/minecraft/server"
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
import PersistentVillage
import DataBits
import ChunkCache
import NavigationAbstract
import TileEntityEnderChest
import BaseBlockPosition
import BlockPosition

# 生成 diff
cd $workdir
git add . -A
git commit -a -m "Cat73 -> Auto import mc-dev"
git format-patch --no-stat -o "$basedir" -1
