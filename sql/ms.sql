SET NAMES UTF8;
DROP DATABASE IF EXISTS ms;
CREATE DATABASE ms CHARSET=UTF8;
USE ms;

#吃饭时间
CREATE TABLE ms_food_time(
  ftid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32)
);
#插入
INSERT TABLE ms_food_time VALUES
("NULL","早餐时间"),
("NULL","午餐时间"),
("NULL","下午茶时间"),
("NULL","晚餐时间");

#轮播图一
CREATE TABLE ms_big_carousel_item(
  bcid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  url VARCHAR(128),
  title VARCHAR(32)，
  title1 VARCHAR(64)，
  ftid INT
);
#插入
INSERT TABLE ms_big_carousel_item VALUES
("NULL","img1","url","全汤面胡萝卜素包子","美味可口，营养丰富","1"),
("NULL","img2","url","田园三明治","美味营养，吃完元气慢慢","1"),
("NULL","img3","url","鲜虾小肉饼","简单美味，几分钟搞定早餐","1"),
("NULL","img4","url","五花肉炖粉条","经济实惠，有滋有味","2"),
("NULL","img5","url","香辣鸡丁","鲜美入味，好吃到爆","2"),
("NULL","img6","url","酒香牛腩","营养美味，一吃停不下来","2"),
("NULL","img7","url","香蕉牛奶西米露","香气扑鼻，好吃过瘾","3"),
("NULL","img8","url","香蕉磅蛋糕","惊艳味蕾，好吃到爆","3"),
("NULL","img9","url","核桃香蕉松饼","香气四溢，吃出幸福","3"),
("NULL","img10","url","培根芝士焗饭","鲜香可口，美味下饭","4"),
("NULL","img11","url","红烧鸭腿","香味浓郁，让人食欲大增","4"),
("NULL","img12","url","爆炒包菜","味道鲜美，让人瞬间开胃","4");

#图片
CREATE TABLE ms_index_pic_title(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
);
#插入
INSERT TABLE ms_index_pic_title VALUES
("NULL","水果"),
("NULL","蔬菜"),
("NULL","五谷"),
("NULL","生鲜");

#食材
CREATE TABLE ms_index_food(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32),
  url VARCHAR(64),
  tid INT,
);
#插入
INSERT TABLE ms_index_food VALUES
("NULL","梨","url","1"),
("NULL","香蕉","url","1"),
("NULL","苹果","url","1"),
("NULL","葡萄","url","1"),
("NULL","哈密瓜","url","1"),
("NULL","西瓜","url","1"),
("NULL","橙","url","1"),
("NULL","石榴","url","1"),
("NULL","西红柿","url","2"),
("NULL","空心菜","url","2"),
("NULL","藕","url","2"),
("NULL","茄子","url","2"),
("NULL","豇豆","url","2"),
("NULL","冬瓜","url","2"),
("NULL","杏鲍菇","url","2"),
("NULL","黄秋葵","url","2"),
("NULL","玉米","url","3"),
("NULL","毛豆","url","3"),
("NULL","核桃","url","3"),
("NULL","花生","url","3"),
("NULL","板栗","url","3"),
("NULL","赤小豆","url","3"),
("NULL","薏米","url","3"),
("NULL","燕麦","url","3"),
("NULL","梭子蟹","url","4"),
("NULL","鲍鱼","url","4"),
("NULL","鸭","url","4"),
("NULL","草鱼","url","4"),
("NULL","牛肉","url","4"),
("NULL","鱿鱼","url","4"),
("NULL","扇贝","url","4"),
("NULL","鸡腿","url","4");

#小轮播导航
CREATE TABLE ms_small_carousel_bar(
  scid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(16)
);
#插入
INSERT TABLE ms_small_carousel_bar VALUES
("NULL","最新"),
("NULL","一小时"),
("NULL","今日"),
("NULL","七天");

#轮播图二
CREATE TABLE ms_small_carousel_item(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(64),
  title VARCHAR(16),
  pople VARCHAR(32),
  summary VARCHAR(64),
  method VARCHAR(32),
  scid INT
);
#插入
INSERT TABLE ms_small_carousel_item VALUES
("NULL","","木须肉","冬儿妈妈","8步/大概10分钟","炒/香辣味","1"),
("NULL","","飞酥饼","行小鸭","5步/大概30分钟","烤/家常味","1"),
("NULL","","南瓜十谷米粥","豆妈","步/大概分钟","煮/家常味","1"),
("NULL","","红心火龙果发糕","行小丫","6步/大概60分钟","烤/家常味","1"),
("NULL","","酿鱿鱼","小鱼哥的私房","15步/大概30分钟","烤/家常味","2"),
("NULL","","木耳苦瓜炒蛋","杰米田园","6步/大概15分钟","炒/家常味","2"),
("NULL","","香辣烤鱼","狂草","14步/大概30分钟","烤/香辣味","2"),
("NULL","","酸菜鱼头豆腐汤","安冉","14步/大概15分钟","烧/酸辣味","2"),
("NULL","","百香果冰粉","萌城美食","5步/大概15分钟","煮/酸甜味","3"),
("NULL","","桃山皮流心月饼","水怜忧","13步/大概30分钟","烘焙/家常味","3"),
("NULL","","蔬菜玉米面饼","美美家的厨房","12步/大概15分钟","煎/家常味","3"),
("NULL","","卡通造型蛋糕","婷婷","17步/大概60分钟","烘焙/甜味","3"),
("NULL","","黄金咖喱虾饭团","爱生活的馋猫","10步/大概15分钟","炸/家常味","4"),
("NULL","","墨鱼丸子冬瓜木耳煲","踏月色而来","14步/大概30分钟","炖/咸鲜味","4"),
("NULL","","干煸烤肠茄条","踏月色而来","15步/大概30分钟","干煸/家常味","4"),
("NULL","","海虾芸豆木耳时蔬便当","踏月色而来","14步/大概15分钟","炒/咸鲜味","4"),
