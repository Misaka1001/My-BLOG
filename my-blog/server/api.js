const mysql = require('mysql');
const sqlConfig = require('./sql.js');

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
      const sql = 'SELECT * FROM myinfo WHERE id = 0';
      connection.query(sql, (err, result) => {
        res.json(result);
        connection.release();
      })
    })
  },
  getArticleMeta(req, res, next) {
    pool.getConnection((err, connection) => {
      const sql = 'SELECT * FROM article_meta';
      connection.query(sql, (err, result) => {
        res.json(result);
        connection.release();
      })
    })
  },
  getMsgBoard(req, res, next){
    pool.getConnection( (err, connection) => {
      const sql = "SELECT * FROM msg_board";
      connection.query(sql, (err, result) => {
        res.json(result);
        connection.release();
      })
    })
  }
}