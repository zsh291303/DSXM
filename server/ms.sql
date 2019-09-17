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
INSERT INTO ms_food_time VALUES
("NULL","早餐时间"),
("NULL","午餐时间"),
("NULL","下午茶时间"),
("NULL","晚餐时间");

#轮播图一
CREATE TABLE ms_big_carousel_item(
  bcid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),
  url VARCHAR(128),
  title VARCHAR(32),
  title1 VARCHAR(64),
  ftid INT
);
#插入
INSERT INTO ms_big_carousel_item VALUES
("NULL","img1","img/index/smcar/1.jpg","酱香春卷","营养丰富，早餐最爱","1"),
("NULL","img2","img/index/smcar/2.jpg","春饼","美味可口，营养丰富","1"),
("NULL","img3","img/index/smcar/3.jpg","香酥油条","简单快手，分分钟搞定早餐","1"),
("NULL","img4","img/index/smcar/4.jpg","钵钵鸡","经济实惠，有滋有味","2"),
("NULL","img5","img/index/smcar/5.jpg","自制麻辣香锅","鲜美入味，好吃到爆","2"),
("NULL","img6","img/index/smcar/6.jpg","糖醋鱼","营养美味，一吃停不下来","2"),
("NULL","img7","img/index/smcar/7.jpg","椰香糖不甩","香气扑鼻，好吃过瘾","3"),
("NULL","img8","img/index/smcar/8.jpg","广东糖不甩","惊艳味蕾，好吃到爆","3"),
("NULL","img9","img/index/smcar/9.jpg","速冻水晶汤圆","香气四溢，吃出幸福","3"),
("NULL","img10","img/index/smcar/10.jpg","干锅菜花","鲜香可口，美味下饭","4"),
("NULL","img11","img/index/smcar/11.jpg","麻婆豆腐","香味浓郁，让人食欲大增","4"),
("NULL","img12","img/index/smcar/12.jpg","香辣虾","味道鲜美，让人瞬间开胃","4");

#图片
CREATE TABLE ms_index_pic_title(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64)
);
#插入
INSERT INTO ms_index_pic_title VALUES
("NULL","水果"),
("NULL","蔬菜"),
("NULL","五谷"),
("NULL","生鲜");

#食材
CREATE TABLE ms_index_food(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32),
  url VARCHAR(64),
  tid INT
);
#插入
INSERT INTO ms_index_food VALUES
("NULL","梨","img/index/middle/shuiguo/li.jpg","1"),
("NULL","香蕉","img/index/middle/shuiguo/xiangjiao.jpg","1"),
("NULL","苹果","img/index/middle/shuiguo/pingguo.jpg","1"),
("NULL","葡萄","img/index/middle/shuiguo/putao.jpg","1"),
("NULL","哈密瓜","img/index/middle/shuiguo/hamigua.jpg","1"),
("NULL","西瓜","img/index/middle/shuiguo/xigua.jpg","1"),
("NULL","橙","img/index/middle/shuiguo/cheng.jpg","1"),
("NULL","石榴","img/index/middle/shuiguo/shiliu.jpg","1"),
("NULL","西红柿","img/index/middle/shucai/xihongshi.jpg","2"),
("NULL","空心菜","img/index/middle/shucai/kongxincai.jpg","2"),
("NULL","藕","img/index/middle/shucai/ou.jpg","2"),
("NULL","茄子","img/index/middle/shucai/qiezi.jpg","2"),
("NULL","豇豆","img/index/middle/shucai/jiangdou.jpg","2"),
("NULL","冬瓜","img/index/middle/shucai/donggua.jpg","2"),
("NULL","杏鲍菇","img/index/middle/shucai/xingbaogu.jpg","2"),
("NULL","黄秋葵","img/index/middle/shucai/huangqiukui.jpg","2"),
("NULL","玉米","img/index/middle/wugu/yumi.jpg","3"),
("NULL","毛豆","img/index/middle/wugu/maodou.jpg","3"),
("NULL","核桃","img/index/middle/wugu/hetao.jpg","3"),
("NULL","花生","img/index/middle/wugu/huasheng.jpg","3"),
("NULL","板栗","img/index/middle/wugu/banli.jpg","3"),
("NULL","赤小豆","img/index/middle/wugu/chixiaodou.jpg","3"),
("NULL","薏米","img/index/middle/wugu/yimi.jpg","3"),
("NULL","燕麦","img/index/middle/wugu/yanmai.jpg","3"),
("NULL","梭子蟹","img/index/middle/shengxian/suozixie.jpg","4"),
("NULL","鲍鱼","img/index/middle/shengxian/baoyu.jpg","4"),
("NULL","鸭","img/index/middle/shengxian/ya.jpg","4"),
("NULL","草鱼","img/index/middle/shengxian/caoyu.jpg","4"),
("NULL","牛肉","img/index/middle/shengxian/niurou.jpg","4"),
("NULL","鱿鱼","img/index/middle/shengxian/youyu.jpg","4"),
("NULL","扇贝","img/index/middle/shengxian/shanbei.jpg","4"),
("NULL","鸡腿","img/index/middle/shengxian/jitui.jpg","4");

#小轮播导航
CREATE TABLE ms_small_carousel_bar(
  scid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(16)
);
#插入
INSERT INTO ms_small_carousel_bar VALUES
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
INSERT INTO ms_small_carousel_item VALUES
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
("NULL","","海虾芸豆木耳时蔬便当","踏月色而来","14步/大概15分钟","炒/咸鲜味","4");
