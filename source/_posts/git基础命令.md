title: git基础命令
author: zly kernel
tags:
  - git
categories:
  - 工具
date: 2018-12-21 20:25:00
---
# 创建新git仓库
echo "# coolpay" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:FeaturePay/coolpay.git
git push -u origin master
# push已经存在的仓库
git remote add origin git@github.com:FeaturePay/coolpay.git
git push -u origin master