const path = require('path');
const routerApi = require('./router');
const express = require('express');
const bodyParser = require('body-parser');
const app = express();

// 后端api路由
app.use('/api', routerApi);

// 监听端口
app.listen(3000);
console.log('success listen at port:3000......');