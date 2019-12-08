#!/bin/sh
echo 'kill hexo progress'
ps -ef | grep hexo | grep -v grep | awk '{print $2}' | xargs kill -9
cd /root/source/zly-website
echo 'start hexo server'
hexo server -d &
