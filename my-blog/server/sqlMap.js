var sqlMap = {
    getValue: 'SELECT * FROM message_board WHERE uid = ?',
    setValue: 'UPDATE message_board SET name = ? email = ? msg = ? WHERE uid = ?'
  }
  
  module.exports = sqlMap;