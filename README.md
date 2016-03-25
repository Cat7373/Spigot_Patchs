# 如何制作一个 Patch：
1. 检查你想 Patch 的文件是否被其他 Patch 修改过。
  * 首先构建一次 Spigot。
  * 然后在 Spigot/Spigot-Server/src/main/java/ 里查找有没有目标文件。
2. 如果没有，你需要到 work/decompile-*/ 里找到该文件的源代码，并将文件导入到 mc-dev-imports 中。
3. 直接修改 Spigot/Spigot-Server/src/main/java/ 中的目标文件，然后通过 Git 生成 diff。
4. 将 diff 照着之前的 patch 的格式做一个新的 patch 文件。
5. 尝试是否可以编译通过。
6. 确认你的 patch 可用后可以尝试将源 hash 往前推几个版本，来避免更新时经常需要经常修改 hash。
