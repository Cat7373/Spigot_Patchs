#!/usr/bin/env bash

rm -rf ./Cat73_Spigot_Patchs/
find . -name "*Cat73*.patch" | xargs rm -fv

java -jar BuildTools.jar --rev 1.13.2

git clone https://github.com/Cat7373/Spigot_Patchs.git ./Cat73_Spigot_Patchs/
cp -rv ./Cat73_Spigot_Patchs/Spigot ./

cd Spigot
bash applyPatches.sh
cd Spigot-Server
bash ../../apache-maven-3.5.0/bin/mvn clean package
cp target/spigot-1.13.2-R0.1-SNAPSHOT.jar ../../spigot-cat73-1.13.2.jar
