# 如何制作一个 Patch
1. 首先构建一次`Spigot`。
2. 然后在`Spigot/Spigot-Server/src/main/java/`里查找有没有目标文件。
  * 如果没有
    * `NMS`的文件：你需要将文件添加到`import_mc_dev.sh`中。
      然后清理库到`Spigot`原始的状态后执行一次重新生成`NMS`导入的`Patch`。
    * 非`NMS`的文件：你需要将文件直接复制进去。
3. 直接修改目标文件。
4. 将修改提交到`Git`里(可以多次提交，会生成多个`patch`文件)。
5. 运行`Spigot/rebuildPatches.sh`。
6. 在`Spigot/CraftBukkit-Patchs`中找到目标`patch`文件。

<!---->
* 参考 [Spigot 中的教程](https://hub.spigotmc.org/stash/projects/SPIGOT/repos/spigot/browse/README.md)
* 参考 [Paper 中的教程](https://github.com/PaperMC/Paper/blob/master/CONTRIBUTING.md#modifying-patches)
