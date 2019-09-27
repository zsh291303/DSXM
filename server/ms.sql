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
("NULL","img/index/bgcar/1.jpg","肉段蒜薹","接吻鱼儿","7步/大概60分钟","炒/家常味","1"),
("NULL","img/index/bgcar/2.jpg","香辣花生","清雅小厨","6步/大概30分钟","煮/香辣味","1"),
("NULL","img/index/bgcar/3.jpg","巧克力纸杯蛋糕","安冉","19步/大概60分钟","烘焙/甜味","1"),
("NULL","img/index/bgcar/4.jpg","鸡肉卷","寻找米米","6步/大概60分钟","烘焙/家常味","1"),
("NULL","img/index/bgcar/5.jpg","鲜肉榨菜月饼","禾小荷","17步/大概120分钟","烘焙/咸鲜味","2"),
("NULL","img/index/bgcar/6.jpg","巧克力纸杯蛋糕","安冉","19步/大概60分钟","烘焙/甜味","2"),
("NULL","img/index/bgcar/7.jpg","家常炖鲽鱼","水怜忧","10步/大概30分钟","炖/家常味","2"),
("NULL","img/index/bgcar/8.jpg","豆角火腿丁鸡蛋","花凝雨嫣","8步/大概10分钟","炒/家常味","2"),
("NULL","img/index/bgcar/11.jpg","鸡肉卷","寻找米米","6步/大概60分钟","烘焙/家常味","3"),
("NULL","img/index/bgcar/9.jpg","巧克力纸杯蛋糕","安冉","19步/大概60分钟","烘焙/甜味","3"),
("NULL","img/index/bgcar/10.jpg","香辣花生","清雅小厨","6步/大概30分钟","煮/香辣味","3"),
("NULL","img/index/bgcar/12.jpg","肉段蒜薹","接吻鱼儿","7步/大概60分钟","炒/家常味","3"),
("NULL","img/index/bgcar/13.jpg","山药百合汤","爱生活的馋猫","7步/大概30分钟","煮/甜味","4"),
("NULL","img/index/bgcar/14.jpg","养生山药饼","松鼠鱼77","10步/大概15分钟","蒸/家常味","4"),
("NULL","img/index/bgcar/15.jpg","玫瑰花千果饼","踏月色而来","21步/大概120分钟","烤/甜味","4"),
("NULL","img/index/bgcar/16.jpg","糖渍柠檬皮","花凝雨嫣","8步/大概60分钟","煮/甜味","4");

#用户登录
create table user_login(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uphone varchar(11),
  upwd varchar(12)
);
#插入数据
insert into user_login values
('NULL','jingjing','123456'),
('NULL','liangliang','123226'),
('NULL','haha','113216');

#饮食健康
#人群膳食表
CREATE TABLE Pfood(
    pid INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(32),
	affect VARCHAR(16),
	writer VARCHAR(64),
	main_Materials  VARCHAR(32),
	sub_Materitals  VARCHAR(32),
	pic VARCHAR(128),
	aid INT
);
INSERT INTO Pfood VALUES
("NULL","黄瓜芹菜苹果汁","防癌","静默成诗","黄瓜","清水","img/fimages/food01.jpg","1"),
("NULL","葱花花蛤","清热去火","美食杰小编","花蛤","小葱","img/fimages/food02.jpg","1"),
("NULL","蒜泥茄子","防癌","美食杰小编","茄子(紫皮)","香油","img/fimages/food03.jpg","1"),
("NULL","鱼胶炖排骨","补肾","营养师一叶美食","鱼胶","枸杞子","img/fimages/food04.jpg","1"),
("NULL","家常手撕包菜","抵抗力","蕾拉REIRA","包菜","耗油","img/fimages/food05.jpg","1"),
("NULL","苦瓜炒虾仁","清热消暑","厨恋恋","苦瓜","植物油","img/fimages/food06.jpg","1"),
("NULL","沙茶米粉汤","补血","烧焦的Apple","虾","沙茶酱","img/fimages/food07.jpg","1"),
("NULL","清蒸桂鱼","防癌","美食杰小编","桂鱼","花生油","img/fimages/food08.jpg","1"),
("NULL","核桃蛋饼","镇静助眠","宝宝辅食达人","牛奶","无","img/fimages/food09.jpg","1"),
("NULL","鳕鱼蒸糕","软化血管","宝宝营养辅食","鳕鱼","柠檬","img/fimages/food10.jpg","1"),
("NULL","奶酪时蔬蒸蛋羹","健脑益智","宝宝辅食达人","鸡蛋","淀粉","img/fimages/food11.jpg","1"),
("NULL","幼儿南瓜糯米鸡饭","抵抗力","主妇小食光","南瓜","腌鸡料","img/fimages/food12.jpg","1"),
("NULL","小鸭子糖霜饼干","防癌","零零烘焙","淀粉","食用色素","img/fimages/food13.jpg","2"),
("NULL","草莓酱西多士","健脑益智","随心煮意","吐司","植物油","img/fimages/food14.jpg","2"),
("NULL","五彩鸡刨豆腐","抵抗力","随心煮意","胡萝卜","虾米","img/fimages/food15.jpg","2"),
("NULL","芒果奶酪酱","脂肪肝","梅依旧","芒果","白糖","img/fimages/food16.jpg","2"),
("NULL","土豆炖牛肉","补充蛋白质","松下美食沙龙","牛肉","色拉油","img/fimages/food17.jpg","2"),
("NULL","萝卜排骨汤","补充蛋白质","松下美食沙龙","白萝卜","食盐","img/fimages/food18.jpg","2"),
("NULL","莲子排骨粉蒸肉","补肾","简约煮意","猪大排","荷叶","img/fimages/food19.jpg","2"),
("NULL","海苔肉松饼干","健脑益智","小春的厨房","低筋面粉","面粉","img/fimages/food20.jpg","2"),
("NULL","茄汁烩牛尾","祛斑","涓涓小厨","牛尾","食盐","img/fimages/food21.jpg","2"),
("NULL","迷你心形巧克力派","健脑益智","浓咖啡淡心情","黄瓜","清水","img/fimages/food22.jpg","2"),
("NULL","自制红豆酥","健脑益智","水星妞","高筋面粉","鸡蛋","img/fimages/food23.jpg","2"),
("NULL","巧拌甜豆冰笋","抵抗力","璐稔","荷兰豆","紫晶藻","img/fimages/food24.jpg","2"),
("NULL","快手无油茄子船","抗衰老","红姨石坊","茄子","胡萝卜","img/fimages/food25.jpg","3"),
("NULL","红烧红衫鱼","健脑益智","粉竽粘糖","红衫鱼","红椒","img/fimages/food26.jpg","3"),
("NULL","凉拌双耳双花","利尿消炎","西马栀子","黑木耳","食盐","img/fimages/food27.jpg","3"),
("NULL","时蔬大凉拌","降血压","灯芯绒","时蔬","食盐","img/fimages/food28.jpg","3"),
("NULL","番茄炒蛋","降血脂","恩泽宝贝","西红柿","植物油","img/fimages/food29.jpg","3"),
("NULL","木须肉","防癌抗癌","恩泽宝贝","猪里脊肉","黑木耳","img/fimages/food30.jpg","3"),
("NULL","苦瓜炒虾仁","强身健体","厨恋恋","苦瓜","香菜","img/fimages/food31.jpg","3"),
("NULL","黑木耳百合炒西芹","安神美容","恩泽宝贝","百合","花生油","img/fimages/food32.jpg","3"),
("NULL","南瓜山药牛肉粥","强身健体","随心煮意","南瓜","大米","img/fimages/food33.jpg","3"),
("NULL","藜麦小米粥","开胃消食","菊娜","藜麦","小米","img/fimages/food34.jpg","3"),
("NULL","秘制脆皮鸭","利尿消肿","心清似水淡偌云","鸭腿","茴香籽","img/fimages/food35.jpg","3"),
("NULL","鸡蛋炒双菇","降糖","斯佳丽","鸡蛋","真姬菇","img/fimages/food36.jpg","3"),
("NULL","苋菜鲜蘑","防止贫血","风中彩虹","苋菜","平菇","img/fimages/food37.jpg","4"),
("NULL","蒜蓉辣酱炒芦笋藕丁","清热利尿","康妮chen","芦笋","藕","img/fimages/food38.jpg","4"),
("NULL","红酒炖梨","清热解暑","BooBoo(来自微信)","雪梨","红酒","img/fimages/food39.jpg","4"),
("NULL","气血美龄粥","软化血管","Rokka六花","糯米","大豆","img/fimages/food40.jpg","4"),
("NULL","双皮奶","镇静助眠","小圆食记","全脂牛奶","蛋清","img/fimages/food41.jpg","4"),
("NULL","葱香豆浆饼","软化血管","sunshinewinnie","黄豆","面粉","img/fimages/food42.jpg","4"),
("NULL","彩椒鸡丝","散瘀止疼","美食杰小编","鸡胸肉","红柿子椒","img/fimages/food43.jpg","4"),
("NULL","海米冬瓜","减肥瘦身","美食杰小编","冬瓜","虾皮","img/fimages/food44.jpg","4"),
("NULL","荷塘小炒","抗菌消炎","美食杰小编","荷兰豆","山药","img/fimages/food45.jpg","4"),
("NULL","冰糖红枣炖雪梨","清心润肺","松下美食沙龙","雪梨","枣","img/fimages/food46.jpg","4"),
("NULL","爆三样","调经","生活如此","猪腰","冬笋","img/fimages/food47.jpg","4"),
("NULL","红烧鲫鱼","增强体质","子瑜妈妈","鲫鱼","细香葱","img/fimages/food48.jpg","4");


#人群膳食人群分类表
CREATE TABLE Population_dite(
	bid INT PRIMARY KEY AUTO_INCREMENT,
	pname VARCHAR(32)	
);
INSERT INTO Population_dite VALUES
("NULL","孕妇"),
("NULL","幼儿"),
("NULL","青少年"),
("NULL","老人");


#疾病膳食表
CREATE TABLE Dfood(
    gid INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(32),
	affect VARCHAR(16),
	writer VARCHAR(64),
	main_Materials  VARCHAR(32),
	sub_Materitals  VARCHAR(32),
	pic VARCHAR(128),
	did INT
);
INSERT INTO Dfood VALUES
("NULL","黄瓜芹菜苹果汁","防癌","静默成诗","黄瓜","清水","img/fimages/food01.jpg","1"),
("NULL","葱花花蛤","清热去火","美食杰小编","花蛤","小葱","img/fimages/food02.jpg","1"),
("NULL","蒜泥茄子","防癌","美食杰小编","茄子(紫皮)","香油","img/fimages/food03.jpg","1"),
("NULL","鱼胶炖排骨","补肾","营养师一叶美食","鱼胶","枸杞子","img/fimages/food04.jpg","1"),
("NULL","家常手撕包菜","抵抗力","蕾拉REIRA","包菜","耗油","img/fimages/food05.jpg","1"),
("NULL","苦瓜炒虾仁","清热消暑","厨恋恋","苦瓜","植物油","img/fimages/food06.jpg","1"),
("NULL","沙茶米粉汤","补血","烧焦的Apple","虾","沙茶酱","img/fimages/food07.jpg","1"),
("NULL","清蒸桂鱼","防癌","美食杰小编","桂鱼","花生油","img/fimages/food08.jpg","1"),
("NULL","核桃蛋饼 宝宝健康食谱","镇静助眠","宝宝辅食达人","牛奶","无","img/fimages/food09.jpg","1"),
("NULL","鳕鱼蒸糕","软化血管","宝宝营养辅食","鳕鱼","柠檬","img/fimages/food10.jpg","1"),
("NULL","奶酪时蔬蒸蛋羹","健脑益智","宝宝辅食达人","鸡蛋","淀粉","img/fimages/food11.jpg","1"),
("NULL","幼儿3岁菜谱 南瓜糯米鸡饭","抵抗力","主妇小食光","南瓜","腌鸡料","img/fimages/food12.jpg","1"),
("NULL","小鸭子糖霜饼干","防癌","零零烘焙","淀粉","食用色素","img/fimages/food13.jpg","2"),
("NULL","草莓酱西多士","健脑益智","随心煮意","吐司","植物油","img/fimages/food14.jpg","2"),
("NULL","五彩鸡刨豆腐","抵抗力","随心煮意","胡萝卜","虾米","img/fimages/food15.jpg","2"),
("NULL","芒果奶酪酱","脂肪肝","梅依旧","芒果","白糖","img/fimages/food16.jpg","2"),
("NULL","土豆炖牛肉","补充蛋白质","松下美食沙龙","牛肉","色拉油","img/fimages/food17.jpg","2"),
("NULL","萝卜排骨汤","补充蛋白质","松下美食沙龙","白萝卜","食盐","img/fimages/food18.jpg","2"),
("NULL","莲子排骨粉蒸肉","补肾","简约煮意","猪大排","荷叶","img/fimages/food19.jpg","2"),
("NULL","海苔肉松饼干","健脑益智","小春的厨房","低筋面粉","面粉","img/fimages/food20.jpg","2"),
("NULL","茄汁烩牛尾","祛斑","涓涓小厨","牛尾","食盐","img/fimages/food21.jpg","2"),
("NULL","迷你心形巧克力派","健脑益智","浓咖啡淡心情","黄瓜","清水","img/fimages/food22.jpg","2"),
("NULL","自制红豆酥","健脑益智","水星妞","高筋面粉","鸡蛋","img/fimages/food23.jpg","2"),
("NULL","巧拌甜豆冰笋","抵抗力","璐稔","荷兰豆","紫晶藻","img/fimages/food24.jpg","2"),
("NULL","快手无油茄子船","抗衰老","红姨石坊","茄子","胡萝卜","img/fimages/food25.jpg","3"),
("NULL","红烧红衫鱼","健脑益智","粉竽粘糖","红衫鱼","红椒","img/fimages/food26.jpg","3"),
("NULL","凉拌双耳双花","利尿消炎","西马栀子","黑木耳","食盐","img/fimages/food27.jpg","3"),
("NULL","时蔬大凉拌","降血压","灯芯绒","时蔬","食盐","img/fimages/food28.jpg","3"),
("NULL","番茄炒蛋","降血脂","恩泽宝贝","西红柿","植物油","img/fimages/food29.jpg","3"),
("NULL","木须肉","防癌抗癌","恩泽宝贝","猪里脊肉","黑木耳","img/fimages/food30.jpg","3"),
("NULL","苦瓜炒虾仁","强身健体","厨恋恋","苦瓜","香菜","img/fimages/food31.jpg","3"),
("NULL","黑木耳百合炒西芹","安神美容","恩泽宝贝","百合","花生油","img/fimages/food32.jpg","3"),
("NULL","南瓜山药牛肉粥","强身健体","随心煮意","南瓜","大米","img/fimages/food33.jpg","3"),
("NULL","藜麦小米粥","开胃消食","菊娜","藜麦","小米","img/fimages/food34.jpg","3"),
("NULL","秘制脆皮鸭","利尿消肿","心清似水淡偌云","鸭腿","茴香籽","img/fimages/food35.jpg","3"),
("NULL","鸡蛋炒双菇","降糖","斯佳丽","鸡蛋","真姬菇","img/fimages/food36.jpg","3"),
("NULL","苋菜鲜蘑","防止贫血","风中彩虹","苋菜","平菇","img/fimages/food37.jpg","4"),
("NULL","蒜蓉辣酱炒芦笋藕丁","清热利尿","康妮chen","芦笋","藕","img/fimages/food38.jpg","4"),
("NULL","红酒炖梨","清热解暑","BooBoo(来自微信)","雪梨","红酒","img/fimages/food39.jpg","4"),
("NULL","气血美龄粥","软化血管","Rokka六花","糯米","大豆","img/fimages/food40.jpg","4"),
("NULL","双皮奶","镇静助眠","小圆食记","全脂牛奶","蛋清","img/fimages/food41.jpg","4"),
("NULL","葱香豆浆饼","软化血管","sunshinewinnie","黄豆","面粉","img/fimages/food42.jpg","4"),
("NULL","彩椒鸡丝","散瘀止疼","美食杰小编","鸡胸肉","红柿子椒","img/fimages/food43.jpg","4"),
("NULL","海米冬瓜","减肥瘦身","美食杰小编","冬瓜","虾皮","img/fimages/food44.jpg","4"),
("NULL","荷塘小炒","抗菌消炎","美食杰小编","荷兰豆","山药","img/fimages/food45.jpg","4"),
("NULL","冰糖红枣炖雪梨","清心润肺","松下美食沙龙","雪梨","枣","img/fimages/food46.jpg","4"),
("NULL","爆三样","调经","生活如此","猪腰","冬笋","img/fimages/food47.jpg","4"),
("NULL","红烧鲫鱼","增强体质","子瑜妈妈","鲫鱼","细香葱","img/fimages/food48.jpg","4");

#疾病调理
CREATE TABLE Disease_management(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	dname VARCHAR(32)	
);
INSERT INTO Disease_management VALUES
("NULL","前列腺"),
("NULL","糖尿病"),
("NULL","高血压"),
("NULL","冠心病");




#功能性调理膳食表
CREATE TABLE Ffood(
    cid INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(32),
	affect VARCHAR(16),
	writer VARCHAR(64),
	main_Materials  VARCHAR(32),
	sub_Materitals  VARCHAR(32),
	pic VARCHAR(128),
	fid INT
);
INSERT INTO Ffood VALUES
("NULL","黄瓜芹菜苹果汁","防癌","静默成诗","黄瓜","清水","img/fimages/food01.jpg","1"),
("NULL","葱花花蛤","清热去火","美食杰小编","花蛤","小葱","img/fimages/food02.jpg","1"),
("NULL","蒜泥茄子","防癌","美食杰小编","茄子(紫皮)","香油","img/fimages/food03.jpg","1"),
("NULL","鱼胶炖排骨","补肾","营养师一叶美食","鱼胶","枸杞子","img/fimages/food04.jpg","1"),
("NULL","家常手撕包菜","抵抗力","蕾拉REIRA","包菜","耗油","img/fimages/food05.jpg","1"),
("NULL","苦瓜炒虾仁","清热消暑","厨恋恋","苦瓜","植物油","img/fimages/food06.jpg","1"),
("NULL","沙茶米粉汤","补血","烧焦的Apple","虾","沙茶酱","img/fimages/food07.jpg","1"),
("NULL","清蒸桂鱼","防癌","美食杰小编","桂鱼","花生油","img/fimages/food08.jpg","1"),
("NULL","核桃蛋饼 宝宝健康食谱","镇静助眠","宝宝辅食达人","牛奶","无","img/fimages/food09.jpg","1"),
("NULL","鳕鱼蒸糕","软化血管","宝宝营养辅食","鳕鱼","柠檬","img/fimages/food10.jpg","1"),
("NULL","奶酪时蔬蒸蛋羹","健脑益智","宝宝辅食达人","鸡蛋","淀粉","img/fimages/food11.jpg","1"),
("NULL","幼儿3岁菜谱 南瓜糯米鸡饭","抵抗力","主妇小食光","南瓜","腌鸡料","img/fimages/food12.jpg","1"),
("NULL","小鸭子糖霜饼干","防癌","零零烘焙","淀粉","食用色素","img/fimages/food13.jpg","2"),
("NULL","草莓酱西多士","健脑益智","随心煮意","吐司","植物油","img/fimages/food14.jpg","2"),
("NULL","五彩鸡刨豆腐","抵抗力","随心煮意","胡萝卜","虾米","img/fimages/food15.jpg","2"),
("NULL","芒果奶酪酱","脂肪肝","梅依旧","芒果","白糖","img/fimages/food16.jpg","2"),
("NULL","土豆炖牛肉","补充蛋白质","松下美食沙龙","牛肉","色拉油","img/fimages/food17.jpg","2"),
("NULL","萝卜排骨汤","补充蛋白质","松下美食沙龙","白萝卜","食盐","img/fimages/food18.jpg","2"),
("NULL","莲子排骨粉蒸肉","补肾","简约煮意","猪大排","荷叶","img/fimages/food19.jpg","2"),
("NULL","海苔肉松饼干","健脑益智","小春的厨房","低筋面粉","面粉","img/fimages/food20.jpg","2"),
("NULL","茄汁烩牛尾","祛斑","涓涓小厨","牛尾","食盐","img/fimages/food21.jpg","2"),
("NULL","迷你心形巧克力派","健脑益智","浓咖啡淡心情","黄瓜","清水","img/fimages/food22.jpg","2"),
("NULL","自制红豆酥","健脑益智","水星妞","高筋面粉","鸡蛋","img/fimages/food23.jpg","2"),
("NULL","巧拌甜豆冰笋","抵抗力","璐稔","荷兰豆","紫晶藻","img/fimages/food24.jpg","2"),
("NULL","快手无油茄子船","抗衰老","红姨石坊","茄子","胡萝卜","img/fimages/food25.jpg","3"),
("NULL","红烧红衫鱼","健脑益智","粉竽粘糖","红衫鱼","红椒","img/fimages/food26.jpg","3"),
("NULL","凉拌双耳双花","利尿消炎","西马栀子","黑木耳","食盐","img/fimages/food27.jpg","3"),
("NULL","时蔬大凉拌","降血压","灯芯绒","时蔬","食盐","img/fimages/food28.jpg","3"),
("NULL","番茄炒蛋","降血脂","恩泽宝贝","西红柿","植物油","img/fimages/food29.jpg","3"),
("NULL","木须肉","防癌抗癌","恩泽宝贝","猪里脊肉","黑木耳","img/fimages/food30.jpg","3"),
("NULL","苦瓜炒虾仁","强身健体","厨恋恋","苦瓜","香菜","img/fimages/food31.jpg","3"),
("NULL","黑木耳百合炒西芹","安神美容","恩泽宝贝","百合","花生油","img/fimages/food32.jpg","3"),
("NULL","南瓜山药牛肉粥","强身健体","随心煮意","南瓜","大米","img/fimages/food33.jpg","3"),
("NULL","藜麦小米粥","开胃消食","菊娜","藜麦","小米","img/fimages/food34.jpg","3"),
("NULL","秘制脆皮鸭","利尿消肿","心清似水淡偌云","鸭腿","茴香籽","img/fimages/food35.jpg","3"),
("NULL","鸡蛋炒双菇","降糖","斯佳丽","鸡蛋","真姬菇","img/fimages/food36.jpg","3"),
("NULL","苋菜鲜蘑","防止贫血","风中彩虹","苋菜","平菇","img/fimages/food37.jpg","4"),
("NULL","蒜蓉辣酱炒芦笋藕丁","清热利尿","康妮chen","芦笋","藕","img/fimages/food38.jpg","4"),
("NULL","红酒炖梨","清热解暑","BooBoo(来自微信)","雪梨","红酒","img/fimages/food39.jpg","4"),
("NULL","气血美龄粥","软化血管","Rokka六花","糯米","大豆","img/fimages/food40.jpg","4"),
("NULL","双皮奶","镇静助眠","小圆食记","全脂牛奶","蛋清","img/fimages/food41.jpg","4"),
("NULL","葱香豆浆饼","软化血管","sunshinewinnie","黄豆","面粉","img/fimages/food42.jpg","4"),
("NULL","彩椒鸡丝","散瘀止疼","美食杰小编","鸡胸肉","红柿子椒","img/fimages/food43.jpg","4"),
("NULL","海米冬瓜","减肥瘦身","美食杰小编","冬瓜","虾皮","img/fimages/food44.jpg","4"),
("NULL","荷塘小炒","抗菌消炎","美食杰小编","荷兰豆","山药","img/fimages/food45.jpg","4"),
("NULL","冰糖红枣炖雪梨","清心润肺","松下美食沙龙","雪梨","枣","img/fimages/food46.jpg","4"),
("NULL","爆三样","调经","生活如此","猪腰","冬笋","img/fimages/food47.jpg","4"),
("NULL","红烧鲫鱼","增强体质","子瑜妈妈","鲫鱼","细香葱","img/fimages/food48.jpg","4");

#功能性调理
CREATE TABLE Functional_conditioning(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(32)	
);
INSERT INTO Functional_conditioning VALUES
("NULL","美容"),
("NULL","减肥"),
("NULL","延缓衰老"),
("NULL","消化不良");



#脏腑调理膳食表
CREATE TABLE Rfood(
    zid INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(32),
	affect VARCHAR(16),
	writer VARCHAR(64),
	main_Materials  VARCHAR(32),
	sub_Materitals  VARCHAR(32),
	pic VARCHAR(128),
	rid INT
);
INSERT INTO Rfood VALUES
("NULL","黄瓜芹菜苹果汁","防癌","静默成诗","黄瓜","清水","img/fimages/food01.jpg","1"),
("NULL","葱花花蛤","清热去火","美食杰小编","花蛤","小葱","img/fimages/food02.jpg","1"),
("NULL","蒜泥茄子","防癌","美食杰小编","茄子(紫皮)","香油","img/fimages/food03.jpg","1"),
("NULL","鱼胶炖排骨","补肾","营养师一叶美食","鱼胶","枸杞子","img/fimages/food04.jpg","1"),
("NULL","家常手撕包菜","抵抗力","蕾拉REIRA","包菜","耗油","img/fimages/food05.jpg","1"),
("NULL","苦瓜炒虾仁","清热消暑","厨恋恋","苦瓜","植物油","img/fimages/food06.jpg","1"),
("NULL","沙茶米粉汤","补血","烧焦的Apple","虾","沙茶酱","img/fimages/food07.jpg","1"),
("NULL","清蒸桂鱼","防癌","美食杰小编","桂鱼","花生油","img/fimages/food08.jpg","1"),
("NULL","核桃蛋饼 宝宝健康食谱","镇静助眠","宝宝辅食达人","牛奶","无","img/fimages/food09.jpg","1"),
("NULL","鳕鱼蒸糕","软化血管","宝宝营养辅食","鳕鱼","柠檬","img/fimages/food10.jpg","1"),
("NULL","奶酪时蔬蒸蛋羹","健脑益智","宝宝辅食达人","鸡蛋","淀粉","img/fimages/food11.jpg","1"),
("NULL","幼儿3岁菜谱 南瓜糯米鸡饭","抵抗力","主妇小食光","南瓜","腌鸡料","img/fimages/food12.jpg","1"),
("NULL","小鸭子糖霜饼干","防癌","零零烘焙","淀粉","食用色素","img/fimages/food13.jpg","2"),
("NULL","草莓酱西多士","健脑益智","随心煮意","吐司","植物油","img/fimages/food14.jpg","2"),
("NULL","五彩鸡刨豆腐","抵抗力","随心煮意","胡萝卜","虾米","img/fimages/food15.jpg","2"),
("NULL","芒果奶酪酱","脂肪肝","梅依旧","芒果","白糖","img/fimages/food16.jpg","2"),
("NULL","土豆炖牛肉","补充蛋白质","松下美食沙龙","牛肉","色拉油","img/fimages/food17.jpg","2"),
("NULL","萝卜排骨汤","补充蛋白质","松下美食沙龙","白萝卜","食盐","img/fimages/food18.jpg","2"),
("NULL","莲子排骨粉蒸肉","补肾","简约煮意","猪大排","荷叶","img/fimages/food19.jpg","2"),
("NULL","海苔肉松饼干","健脑益智","小春的厨房","低筋面粉","面粉","img/fimages/food20.jpg","2"),
("NULL","茄汁烩牛尾","祛斑","涓涓小厨","牛尾","食盐","img/fimages/food21.jpg","2"),
("NULL","迷你心形巧克力派","健脑益智","浓咖啡淡心情","黄瓜","清水","img/fimages/food22.jpg","2"),
("NULL","自制红豆酥","健脑益智","水星妞","高筋面粉","鸡蛋","img/fimages/food23.jpg","2"),
("NULL","巧拌甜豆冰笋","抵抗力","璐稔","荷兰豆","紫晶藻","img/fimages/food24.jpg","2"),
("NULL","快手无油茄子船","抗衰老","红姨石坊","茄子","胡萝卜","img/fimages/food25.jpg","3"),
("NULL","红烧红衫鱼","健脑益智","粉竽粘糖","红衫鱼","红椒","img/fimages/food26.jpg","3"),
("NULL","凉拌双耳双花","利尿消炎","西马栀子","黑木耳","食盐","img/fimages/food27.jpg","3"),
("NULL","时蔬大凉拌","降血压","灯芯绒","时蔬","食盐","img/fimages/food28.jpg","3"),
("NULL","番茄炒蛋","降血脂","恩泽宝贝","西红柿","植物油","img/fimages/food29.jpg","3"),
("NULL","木须肉","防癌抗癌","恩泽宝贝","猪里脊肉","黑木耳","img/fimages/food30.jpg","3"),
("NULL","苦瓜炒虾仁","强身健体","厨恋恋","苦瓜","香菜","img/fimages/food31.jpg","3"),
("NULL","黑木耳百合炒西芹","安神美容","恩泽宝贝","百合","花生油","img/fimages/food32.jpg","3"),
("NULL","南瓜山药牛肉粥","强身健体","随心煮意","南瓜","大米","img/fimages/food33.jpg","3"),
("NULL","藜麦小米粥","开胃消食","菊娜","藜麦","小米","img/fimages/food34.jpg","3"),
("NULL","秘制脆皮鸭","利尿消肿","心清似水淡偌云","鸭腿","茴香籽","img/fimages/food35.jpg","3"),
("NULL","鸡蛋炒双菇","降糖","斯佳丽","鸡蛋","真姬菇","img/fimages/food36.jpg","3"),
("NULL","苋菜鲜蘑","防止贫血","风中彩虹","苋菜","平菇","img/fimages/food37.jpg","4"),
("NULL","蒜蓉辣酱炒芦笋藕丁","清热利尿","康妮chen","芦笋","藕","img/fimages/food38.jpg","4"),
("NULL","红酒炖梨","清热解暑","BooBoo(来自微信)","雪梨","红酒","img/fimages/food39.jpg","4"),
("NULL","气血美龄粥","软化血管","Rokka六花","糯米","大豆","img/fimages/food40.jpg","4"),
("NULL","双皮奶","镇静助眠","小圆食记","全脂牛奶","蛋清","img/fimages/food41.jpg","4"),
("NULL","葱香豆浆饼","软化血管","sunshinewinnie","黄豆","面粉","img/fimages/food42.jpg","4"),
("NULL","彩椒鸡丝","散瘀止疼","美食杰小编","鸡胸肉","红柿子椒","img/fimages/food43.jpg","4"),
("NULL","海米冬瓜","减肥瘦身","美食杰小编","冬瓜","虾皮","img/fimages/food44.jpg","4"),
("NULL","荷塘小炒","抗菌消炎","美食杰小编","荷兰豆","山药","img/fimages/food45.jpg","4"),
("NULL","冰糖红枣炖雪梨","清心润肺","松下美食沙龙","雪梨","枣","img/fimages/food46.jpg","4"),
("NULL","爆三样","调经","生活如此","猪腰","冬笋","img/fimages/food47.jpg","4"),
("NULL","红烧鲫鱼","增强体质","子瑜妈妈","鲫鱼","细香葱","img/fimages/food48.jpg","4");
#脏腑调理
CREATE TABLE Regulation_Zangfu(
	eid INT PRIMARY KEY AUTO_INCREMENT,
	rname VARCHAR(32)	
);
INSERT INTO Regulation_Zangfu VALUES
("NULL","补心"),
("NULL","养肝"),
("NULL","补肺"),
("NULL","补肾");


#适宜食材表
CREATE TABLE Suitable_materials(
	mid INT PRIMARY KEY AUTO_INCREMENT,
	mname VARCHAR(32),
	mimg  VARCHAR(128)
);
INSERT INTO Suitable_materials VALUES
("NULL","西瓜皮","img/gimages/g01.jpg"),
("NULL","人参果","img/gimages/g02.jpg"),
("NULL","李子","img/gimages/g03.jpg"),
("NULL","无花果","img/gimages/g04.jpg"),
("NULL","荸荠","img/gimages/g05.jpg"),
("NULL","山竹","img/gimages/g06.jpg"),
("NULL","蒲菜","img/gimages/g07.jpg"),
("NULL","藕带","img/gimages/g08.jpg"),
("NULL","牛蒡","img/gimages/g09.jpg"),
("NULL","毛豆","img/gimages/g10.jpg"),
("NULL","西葫芦","img/gimages/g11.jpg"),
("NULL","丝瓜","img/gimages/g12.jpg"),
("NULL","银耳","img/gimages/g13.jpg"),
("NULL","羊肚菌","img/gimages/g14.jpg"),
("NULL","雪莲菌","img/gimages/g15.jpg"),
("NULL","秀珍菇","img/gimages/g16.jpg"),
("NULL","蟹味菇","img/gimages/g17.jpg"),
("NULL","黄瓜","img/gimages/g18.jpg"),
("NULL","木耳","img/gimages/g19.jpg"),
("NULL","豆芽","img/gimages/g20.jpg"),
("NULL","淮山药","img/gimages/g21.jpg"),
("NULL","柿子椒","img/gimages/g22.jpg"),
("NULL","西红柿","img/gimages/g23.jpg"),
("NULL","玉米","img/gimages/g24.jpg"),
("NULL","葫芦","img/gimages/g25.jpg"),
("NULL","胡萝卜","img/gimages/g26.jpg"),
("NULL","黑豆芽","img/gimages/g27.jpg"),
("NULL","冬瓜","img/gimages/g28.jpg");

#禁忌食材表
CREATE TABLE Taboo_materials(
	oid INT PRIMARY KEY AUTO_INCREMENT,
	tname VARCHAR(32),
	timg  VARCHAR(128)
);
INSERT INTO Taboo_materials VALUES
("NULL","鸡皮","img/bimages/b01.jpg"),
("NULL","猪油","img/bimages/b02.jpg"),
("NULL","肥膘肉","img/bimages/b03.jpg"),
("NULL","牛大肠","img/bimages/b04.jpg"),
("NULL","培根","img/bimages/b05.jpg"),
("NULL","蒜肠","img/bimages/b06.jpg"),
("NULL","腊肠","img/bimages/b07.jpg"),
("NULL","腊肉","img/bimages/b08.jpg"),
("NULL","咸肉","img/bimages/b09.jpg"),
("NULL","榴莲","img/bimages/b10.jpg"),
("NULL","哈密瓜","img/bimages/b11.jpg"),
("NULL","毛笋","img/bimages/b12.jpg"),
("NULL","腌韭菜","img/bimages/b13.jpg"),
("NULL","片糖","img/bimages/b14.jpg"),
("NULL","薯条","img/bimages/b15.jpg");