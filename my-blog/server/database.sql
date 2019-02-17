SET NAMES UTF8;
DROP DATABASE IF EXISTS blog;
CREATE DATABASE blog CHARSET=UTF8;
USE blog;
CREATE TABLE message_board(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(16),
    email VARCHAR(32),
    msg VARCHAR(1000)
);
INSERT INTO message_board VALUES(
    NULL,
    'gjq',
    'eugen0822@outlook.com',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur corrupti sint necessitatibus voluptate tempora enim odit animi fugiat tempore, deleniti numquam, velit asperiores unde. A molestiae odio accusamus sint labore.'
);
CREATE TABLE myinfo(
    id INT(1),
    name VARCHAR(16),
    tel INT(11),
    email VARCHAR(32),
    github VARCHAR(32),
    qq INT(10),
    wx VARCHAR(18),
    job VARCHAR(10)
);
INSERT INTO myinfo VALUES(
    0,
    '断章',
    15704612073,
    'eugen0822@outlook.com',
    'https://github.com/Misaka1001',
    529885876,
    'Apophis__',
    'web前端开发'
);