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
    summary VARCHAR(100),
    date BIGINT,
    count INT(5),
    cover VARCHAR(32),
    class VARCHAR(8),
    recommend BOOLEAN
);
INSERT INTO article_meta VALUES(
    NULL,
    '作用域',
    '编译原理
传统编译语言中，程序的一段源码在执行前经历三个步骤，统称“编译”',
    123123123123,
    0,
    '/static/cover1.jpg',
    '读书笔记',
    TRUE
);
INSERT INTO article_meta VALUES(
    NULL,
    '词法作用域',
    '词法阶段
词法化的过程会对源代码中的字符进行检查，如果是有状态的解析过程，还会赋予单词语义。
词法作用域就是定义在词法阶段的作用域。',
    123123123123,
    0,
    '/static/cover2.jpg',
    '读书笔记',
    TRUE
);
INSERT INTO article_meta VALUES(
    NULL,
    '作用域闭包',
    '当函数可以记住并访问所在的词法作用域的时候，就产生了闭包，即使函数是在当前词法作用域之外执行的。

无论通过何种手段将内部函数传递到所在的词法作用域之外，它都会持有对原始定义作用域的引用，无论在何处执行这个函数都会使用闭包',
    123123123123,
    0,
    '/static/cover3.jpg',
    '读书笔记',
    TRUE
);
CREATE TABLE article(
    id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(5000)
);
INSERT INTO article VALUES(
    NULL,
    '<div style="width:100%; height:100%;" class="w-e-text" id="text-elem773882758774135"><div yne-bulb-block="heading" yne-bulb-level="2" id="2152-1543110201289">1.1编译原理</div><div yne-bulb-block="paragraph">传统编译语言中，程序的一段源码在执行前经历三个步骤，统称“编译”</div><div yne-bulb-block="paragraph">1、分词/词法分析(Tokenizing/Lexing)</div><div yne-bulb-block="paragraph">将字符串（对编程语言来说）分解成有意义的代码块（词法单元）</div><div yne-bulb-block="paragraph">2、解析/语法解析(parsing)</div><div yne-bulb-block="paragraph">将词法单元流（数组）转换成一个由元素逐级嵌套所组成的代表了程序语法结构的树（抽象语法树）（Abstract Synatax Tree, AST）</div><div yne-bulb-block="paragraph">variableDeclaration（变量声明）——Identifier（识别符/变量名）——AssignmentExpression（=/赋值符号）——NumeriacLiteral（值）</div><div yne-bulb-block="paragraph">3、代码生成</div><div yne-bulb-block="paragraph">将AST转换为可执行代码的过程称为代码生成(转换为一组机器指令)</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">对于JavaScript来说，大部分编译发生在代码执行前的几微秒</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="heading" yne-bulb-level="2" id="4864-1543112432996">1.2理解作用域</div><div yne-bulb-block="paragraph">对 var a = 2； 进行处理</div><div><ul yne-block-type="list"><li>引擎：从头到尾负责整个JavaScript程序的编译和执行过程</li><li>编译器：负责语法分析及代码生成</li><li>作用域：负责收集并维护由所有声明的标识符（变量）组成的一系列查询，并实施一套规则，确定当前执行的代码对这些标识符的访问权限(用于确定在何处以及如何查找变量（标识符）)</li></ul></div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">引擎认为var a = 2；有个声明，一个由编译器在编译时处理，另一个由引擎在运行时处理</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">编译器的处理：</div><div><ol yne-block-type="list"><li>遇到var a ，编译器询问作用域是否已经有一个该名称的变量存在于同一个作用域的集合中。如果是，忽略声明，继续进行编译；否则会要求作用域在当前作用域的集合中声明一个新的变量，并命名为a。</li><li>接下来，编译器会为引擎生成运行时所需代码，用来处理赋值操作。引擎运行时首先询问作用域，是否已经有一个叫作a的变量，如果是，使用这个变量。</li></ol></div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">赋值操作的目标是谁（LHS）试图找到变量的容器本身  参数赋值是LHS引用</div><div yne-bulb-block="paragraph">谁是赋值操作的源头（RHS）简单的查找某个变量的值  函数的执行时RHS引用</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="heading" yne-bulb-level="2" id="5089-1543113412070">1.3作用域嵌套</div><div yne-bulb-block="paragraph">作用域是根据名称查找变量的一套规则。</div><div yne-bulb-block="paragraph">一个块或函数嵌套在另一个块或函数中时，就发生了作用域的嵌套。因此，在当前作用域无法找到某个变量时，引擎就会在外层嵌套的作用域中继续查找，直到找到该变量，或抵达全局作用域</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="heading" yne-bulb-level="2" id="6383-1543114374770">1.4异常</div><div yne-bulb-block="paragraph">RHS查询在所有嵌套的作用域中找不到所需变量，会抛出ReferenceError异常。</div><div yne-bulb-block="paragraph">LHS查询找不到目标变量时，在非严格模式下，全局作用域会创建一个具有该名称的变量。</div><div yne-bulb-block="paragraph">严格模式禁止自动或隐式地创建全局变量。</div><div yne-bulb-block="paragraph">RHS查询找到一个变量，但尝试对这个变量的值进行不合理操作，如对非函数值进行调用,或者引用null或undefined类型的值中的属性，会抛出TypeError。</div></div>'
);
INSERT INTO article VALUES(
    NULL,
    '<div style="width:100%; height:100%;" class="w-e-text" id="text-elem773882758774135"><div yne-bulb-block="heading" yne-bulb-level="2" id="2152-1543110201289"><div yne-bulb-block="paragraph">2.1词法阶段</div><div yne-bulb-block="paragraph">词法化的过程会对源代码中的字符进行检查，如果是有状态的解析过程，还会赋予单词语义。</div><div yne-bulb-block="paragraph">词法作用域就是定义在词法阶段的作用域。</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">全局变量会自动成为全局对象（比如浏览器中的window对象）的属性，因此可以不直接通过全局对象的词法名称，而是间接的通过全局对象属性的引用对其进行访问。</div><div yne-bulb-block="code" id="8366-1543767759096">widow.foo
</div><div yne-bulb-block="paragraph">通过这种技术可以访问被同名变量遮蔽的全局变量。</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">词法作用域只由函数被声明时所处的位置决定。</div><div yne-bulb-block="paragraph">无论函数在哪里被调用，也无论它如何被调用，它的词法作用域都只由函数被声明时所处的位置决定。</div><div yne-bulb-block="paragraph">2.2欺骗词法</div><div yne-bulb-block="paragraph">eval（）通常用来执行动态创建的代码</div><div yne-bulb-block="paragraph">可以在运行期修改书写期的词法作用域</div><div yne-bulb-block="paragraph">严格模式下：eval（）在运行时有自己的词法作用域，意味着其中的声明无法修改所在作用域。</div><div yne-bulb-block="paragraph">setTimeout和setInterval有相同的作用</div><div yne-bulb-block="paragraph">with（）根据传给它的对象凭空创建了一个全新的词法作用域。</div><div yne-bulb-block="paragraph">eval和with会导致引擎无法在编译时对作用域查找进行优化，因为引擎只能谨慎地认为这样的优化是无效的。</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">JavaScript引擎会在编译阶段进行数项性能优化，其中有些优化依赖于能够根据代码的词法进行静态分析，并预先确定所有变量和函数的定义位置，才能在执行过程中快速找到标识符。一旦出现eval和with所有优化都没有意义，所以最简单的做法就是不做优化。</div></div></div>'
);
INSERT INTO article VALUES(
    NULL,
    '<div style="width:100%; height:100%;" class="w-e-text" id="text-elem773882758774135"><div yne-bulb-block="heading" yne-bulb-level="2" id="2152-1543110201289"><div yne-bulb-block="paragraph"><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">当函数可以记住并访问所在的词法作用域的时候，就产生了闭包，即使函数是在当前词法作用域之外执行的。</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">无论通过何种手段将内部函数传递到所在的词法作用域之外，它都会持有对原始定义作用域的引用，无论在何处执行这个函数都会使用闭包</div><div yne-bulb-block="paragraph"><pre><code>function wait(message){<br>    setTimeout(function timer(){<br>        console.log(message)<br>    },1000)<br>}<br>var message = "Hello World"<br>wait(message)</code></pre></div><div yne-bulb-block="paragraph">timer拥有涵盖wait（...）作用域的闭包，同时持有对message的引用、</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">本质上，无论何时何地，如果将（访问他们各自词法作用域的）函数当作第一级的值类型并导出传递，就可以看到闭包的应用。在定时器、事件监听器、Ajax请求、跨窗口通信、Web Workers或者任何其他的异步（或同步）的任务中，只要使用了回调函数，实际上就是在使用闭包。</div><div yne-bulb-block="code" id="5316-1548432717705"><pre><code>for(var i = 1;i &lt;= 5; i++){<br>    (function(i){<br>        setTimeout(function(){<br>            console.log(i);<br>        },i*1000)<br>    }(i));<br>}</code></pre></div><div yne-bulb-block="paragraph">模块模式必要条件：</div><div yne-bulb-block="paragraph">1、必须有外部的封闭函数，该函数至少被调用一次（每次调用都会创建一个新的模块实例）</div><div yne-bulb-block="paragraph">2、封闭函数必须返回至少一个内部函数，这样内部函数才能在私有作用域中形成闭包，并且可以访问或修改私有的状态。</div><div yne-bulb-block="paragraph"><br></div><div yne-bulb-block="paragraph">ES6  export   </div><div yne-bulb-block="paragraph">import [name] from "file"</div><div yne-bulb-block="paragraph">module [name] from "file"</div><div yne-bulb-block="paragraph"><br></div></div></div></div>'
);
CREATE TABLE msg_board(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user VARCHAR(16),
    msg VARCHAR(1000),
    date VARCHAR(20),
    email VARCHAR(16)
);
INSERT INTO msg_board VALUES(
    NULL,
    'test',
    'testMessage',
    '2019年2月23日10:00',
    'eugen0822@outlook.com'
);
INSERT INTO msg_board VALUES(
    NULL,
    'test',
    'testMessage',
    '2019年2月23日10:00',
    'eugen0822@outlook.com'
);
