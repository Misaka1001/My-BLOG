const mysql = require('mysql');
const sqlConfig = require('./sql.js');
const fs = require('fs');
const pool = mysql.createPool({
  host: sqlConfig.mysql.host,
  user: sqlConfig.mysql.user,
  password: sqlConfig.mysql.password,
  database: sqlConfig.mysql.database,
  port: sqlConfig.mysql.port,
  multipleStatements: true
});
function getValue(sql, req, res) {
  pool.getConnection((err, connection) => {
    connection.query(sql, (err, result) => {
      res.json(result);
      connection.release();
    })
  })
}
function setValue(sql, req, res) {
  pool.getConnection((err, connection) => {
    connection.query(sql, (err, result) => {
      res.json(result);
      connection.release();
    })
  })
}
module.exports = {
  //获取个人信息
  getMyInfo(req, res) {
    const sql = 'SELECT * FROM myinfo WHERE id = 0';
    getValue(sql, req, res)
  },
  //获取文章基本信息
  getArticleMeta(req, res) {
    const sql = 'SELECT * FROM article_meta';
    getValue(sql, req, res)
  },
  //获取具体文章内容
  getArticle(req, res) {
    const id = req.query.id;
    const sql = `SELECT * FROM article WHERE id = ${id}`;
    getValue(sql, req, res)
  },
  //获取留言板信息
  getMsgBoard(req, res) {
    const sql = "SELECT * FROM msg_board";
    getValue(sql, req, res)
  },
  //添加新留言
  leaveMessage(req, res) {
    const queryMsg = req.body;
    const sql = `INSERT INTO msg_board VALUES(
      NULL,
      '${queryMsg.user}',
      '${queryMsg.msg}',
      '${queryMsg.date}',
      '${queryMsg.email}'
    )`;
    setValue(sql, req, res)
  },
  //获取博主推荐信息
  getRecommend(req, res) {
    const sql = "SELECT * FROM article_meta WHERE recommend = 1";
    getValue(sql, req, res)
  },
  //获取番剧更新
  getBangumi(req, res) {
    fs.readFile('../static/test.txt', 'utf-8', function (err, data) {
      if (err) {
        console.log(err)
      } else {
        res.json(data)
      }
    })
  }
}