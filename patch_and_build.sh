#!/usr/bin/env bash

set -e

rm -fv BuildTools.jar
rm -fv BuildTools.jar.*
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

rm -rfv ./Cat73_Spigot_Patchs/
find . -name "*Cat73*.patch" | xargs rm -fv

java -jar BuildTools.jar --rev 1.14.4

rm -rfv Spigot/Spigot-API/target/*
rm -rfv Spigot/Spigot-Server/target/*

git clone https://github.com/Cat7373/Spigot_Patchs.git ./Cat73_Spigot_Patchs/
cp -rv ./Cat73_Spigot_Patchs/Spigot ./

cd Spigot
bash applyPatches.sh
bash ../apache-maven-3.6.0/bin/mvn clean package
cp Spigot-Server/target/spigot-1.15.2-R0.1-SNAPSHOT.jar ../spigot-cat73-1.15.2.jar
