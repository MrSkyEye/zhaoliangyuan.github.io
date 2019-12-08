## hexo 操作记录
1. 修改密码
 
 ``` 
 $ node
 const bcrypt = require('bcrypt-nodejs')
 bcrypt.hashSync('your password secret here!')
 ```