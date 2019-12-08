#!/bin/sh
cd /root/source/zly-website
echo 'project clean and generate'
hexo clean && hexo g
sh /root/source/zly-website/deploy/restart.sh
