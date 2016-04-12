#!/usr/bin/env bash

rm -rf ./Cat73_Spigot_Patchs/
find . -name "*Cat73*.patch" | xargs rm -f
git clone https://github.com/Cat7373/Spigot_Patchs.git ./Cat73_Spigot_Patchs/
cp -r ./Cat73_Spigot_Patchs/Spigot/ ./

java -jar BuildTools.jar
