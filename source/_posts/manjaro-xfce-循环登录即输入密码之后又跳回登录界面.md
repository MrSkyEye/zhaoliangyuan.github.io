title: manjaro xfce 循环登录即输入密码之后又跳回登录界面
author: zly kernel
tags:
  - 操作系统
  - Linux
  - archlinux
  - manjaro
  - xfce
categories:
  - 技术
  - 操作系统
  - linux
  - archlinux
  - manjaro
  - xfce
date: 2019-03-20 17:21:00
---
# 现象描述<br>
manjaro xfce 循环登录即输入密码之后又跳回登录界面<br>
# 解决方式
step1.登录页面进入tty （ctrl+alt+f2）<br>
step2.删除 ~/.Xauthority<br>
step3.reboot重启系统<br>