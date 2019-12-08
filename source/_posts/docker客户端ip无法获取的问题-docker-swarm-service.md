title: 'docker客户端ip无法获取的问题-docker swarm service '
author: zly kernel
tags: []
categories:
  - 云
date: 2019-12-08 19:36:00
---
### 问题背景
```
centos version ：centos-release-7-2.1511.el7.centos.2.10.x86_64 (查询命令 rpm -q centos-release)
docker version ：18.06.1-c
network overlay
```
### 问题描述
docker service create 集群节点时，节点获取的客户段ip为内网ip

![upload successful](\images\pasted-0.png)

### 原因
docker swarm service 方式启动时 会自动负载各个节点 所以个应用获取客户端IP为network 的网关ip
解决方案
使用边缘代理并设置新增指定head项
程序中优先获取该head项中的值
具体做法
docker run 启动nginx  
修改配置文件 增加指定head项
代理各个应用端口
应用程序中
优先判断如果该head项头中有值，则直接返回使用ip HttpServletRequest getHeader("指定head项")