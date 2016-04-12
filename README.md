# 如何制作一个 Patch
1. 首先构建一次 Spigot。
2. 然后在 Spigot/Spigot-Server/src/main/java/ 里查找有没有目标文件。
  * 如果没有，你需要到 work/decompile-*/ 里找到该文件，并将文件复制过去。
3. 直接修改目标文件。
4. 将修改提交到 Git 里(可以多次提交，会生成多个 Patch 文件)。
5. 运行 Spigot/rebuildPatches.sh。

<!---->
* 参考 [Spigot 中的教程](https://hub.spigotmc.org/stash/projects/SPIGOT/repos/spigot/browse/README.md)
* 参考 [Paper 中的教程](https://github.com/PaperMC/Paper/blob/master/CONTRIBUTING.md#modifying-patches)
