# 如何制作一个 Patch
1. 首先构建一次 Spigot。
2. 然后在 Spigot/Spigot-Server/src/main/java/ 里查找有没有目标文件。
  * 如果没有，你需要到 work/decompile-*/ 里找到该文件，并将文件复制过去。
3. 直接修改目标文件。
4. 运行 Spigot/rebuildPatches.sh。
5. 修改生成的 Patch 的文件名。

<!---->
* 参考 [Paper 中的教程](https://github.com/PaperMC/Paper/blob/master/CONTRIBUTING.md#modifying-patches)
* 小技巧：首先将 Spigot/Spigot-Server/ 回退到几个版本之前再修改，可以避免需要经常需要经常 rebuildPatches。
