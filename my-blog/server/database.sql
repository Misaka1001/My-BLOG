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
    tel BIGINT,
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
CREATE TABLE article_meta(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(32),
    date BIGINT,
    count INT(5),
    cover VARCHAR(32),
    class VARCHAR(8)
);
INSERT INTO article_meta VALUES(
    NULL,
    '数据属性',
    123123123123,
    0,
    '/static/cover1.jpg',
    '学习笔记'
);
INSERT INTO article_meta VALUES(
    NULL,
    '数据属性',
    123123123123,
    0,
    '/static/cover1.jpg',
    '随笔'
);
CREATE TABLE article(
    id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(5000)
);
INSERT INTO article VALUES(
    NULL,
    '1、数据属性
[[Configurable]] : 可配置性，表示能否使用delete删除属性从而重新定义属性
[[Enumerable]] : 可枚举性，表示能否使用for-in循环遍历
[[Writable]] : 可写，表示能否修改属性的值
[[Value]] : 包含这个属性的数据值，读取属性值从这个位置读，写入时把新值保存在这个位置

修改属性默认的特性：Object.defineProperty()   该方法接收三个参数：属性所在对象、属性的名字和一个描述符对象
eg : Object.defineProperty(person,"name",{writable : false, value : "guo"});

configurable一旦设置为false，表示不能从对象删除属性，并且不能变回可配置的

2、访问器属性
[[Configurable]] : 可配置性，表示能否使用delete删除属性从而重新定义属性
[[Enumerable]] : 可枚举性，表示能否使用for-in循环遍历
[[Get]] : 读取属性调用的函数 
[[Set]] : 写入属性调用的函数

同样，需要使用Object.defineProperty()定义访问器属性,使用该方法创建一个新的属性，
不指定的情况下，Configurable，Enumerable，Writable默认为false
Object.defineProperties()
读取属性的特性   Object.getOwnPropertyDescriptor(obj , "name")

创建对象
1、工厂模式
       function createPerson(name, age, job){
           var o = new Object();
           o.name = name;
           o.age = age;
           o.job = job;
           o.sayName = function(){
               alert(this.name);
           };
           return o;
       }
var person1 = createPerson("Greg", 27, "Doctor");

2、构造函数模式
        function Person(name, age, job){
            this.name = name;
            this.age = age;
            this.job = job;
            this.sayName = function(){
                alert(this.name);
            };
        }
        var person1 = new Person("Greg", 25, "Doctor");

调用构造函数的步骤：
1、创建一个新对象
2、将构造函数的作用域赋给新对象
3、执行构造函数的代码
4、返回新对象

就检测对象类型，instanceof 比 constructor更可靠一些
isPrototyeOf()		Object.getPrototype()
in	hasOwnProperty()
        function hasPrototypeProperty(object, name){
            return !object.hasOwnProperty(name)&&(name in object);
        }

Object.keys（）返回可枚举属性的字符串数组
Object.getOwnPropertyNames（）可以获得所有实例属性，无论能否枚举'
);
INSERT INTO article VALUES(
    NULL,
    '1、数据属性
[[Configurable]] : 可配置性，表示能否使用delete删除属性从而重新定义属性
[[Enumerable]] : 可枚举性，表示能否使用for-in循环遍历

        function hasPrototypeProperty(object, name){
            return !object.hasOwnProperty(name)&&(name in object);
        }

Object.keys（）返回可枚举属性的字符串数组
Object.getOwnPropertyNames（）可以获得所有实例属性，无论能否枚举'
);
