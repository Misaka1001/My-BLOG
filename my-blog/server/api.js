const mysql = require('mysql');
const sqlConfig = require('./sql.js');
const sqlMap = require('./sqlMap.js');

const pool = mysql.createPool({
  host: sqlConfig.mysql.host,
  user: sqlConfig.mysql.user,
  password: sqlConfig.mysql.password,
  database: sqlConfig.mysql.database,
  port: sqlConfig.mysql.port,
  multipleStatements: true
});

module.exports = {
  getMyInfo(req, res, next) {
    pool.getConnection((err, connection) => {
      var sql = 'SELECT * FROM myinfo WHERE id = 0';
      connection.query(sql, (err, result) => {
        console.log(sql);
        res.json(result);
        connection.release();
      })
    })
  },
  getArticleMeta(req, res, next) {
    pool.getConnection((err, connection) => {
      var sql = 'SELECT * FROM article_meta';
      connection.query(sql, (err, result) => {
        console.log(res.json(result));
        connection.release();
      })
    })
  },
  getValue(req, res, next) {
    var id = req.query.id;
    pool.getConnection((err, connection) => {
      var sql = `SELECT * FROM message_board WHERE id = ${id}`;
      connection.query(sql, (err, result) => {
        res.json(result);
        connection.release();
      })
    })
  },
  setValue(req, res, next) {
    var id = req.body.id,
      name = req.body.name,
      email = req.body.email,
      msg = req.body.msg;
    pool.getConnection((err, connection) => {
      var sql = `UPDATE message_board SET name = '${name}',  email = '${email}', msg = '${msg}' WHERE id = ${id}`;
      connection.query(sql, (err, result) => {
        res.json(result);
        connection.release();
      })
    })
  }
}