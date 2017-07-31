#!/bin/bash
echo "解压$1到unzip_file文件夹中"
unzip -o -q $1 -d ./unzip_file/
echo 反编译dex
sh ./sources/dex2jar-2.1-SNAPSHOT/d2j-dex2jar.sh ./unzip_file/classes.dex --force
echo 启动JD-GUI
java -jar ./sources/jd-gui-1.4.0.jar classes-dex2jar.jar
exit
