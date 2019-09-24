<template>
  <header id="header">
  <div class="header_1" 
    style="background-image: url(img/header/bj.png);background-repeat: no-repeat; ">
<div class="search">
    <div>
<input id="s1" type="text" placeholder="请输入菜谱/食谱/菜单/作者" >
    </div>
    <div>
<input id="s2" type="submit" value="搜索">
</div>
</div>
<div class="dl_img">

 <a id="a1" href=""><img id="img1_qq" src="img/header/qq.png">QQ 登陆</a>
<a  id="a2" href=""><img id ="img2_weibo"   src="img/header/weibo.png">微博登陆</a>
<router-link :to="`/login/`">登陆</router-link>
<router-link :to="`/reg/`">注册</router-link>
<!--<a href="">登陆</a>
<a href="">注册</a>-->
</div>
    </div>
<div class="nav"> 
        <ul>
                <li style="display:inline"><a href="">首页</a></li>
                <li > <a  href="">菜谱大全</a>
                  <ul>
                   <li><a href="">家常菜谱</a></li>
                   <li><a href="">中华名菜</a></li>
                    <li><a href="">本地小吃</a></li>
                  </ul>
                </li>
                <li style="display:inline"><router-link :to="`/Food1`">饮食健康</router-link></li>
                <li style="display:inline"><a  href="">美食菜单</a></li>
                <li><a   href="">家居馆</a></li>
                <li><a  href="">美食达人</a></li>
                <li ><a href="">菜谱视频</a></li>
                <li><a  href="">产品下载</a></li>
    </ul>
    </div>
  </header>
</template>
<style>
.header_1 {
     width: 100%;
     height: 100%;
     position: relative;
    }
   #img1_qq{
     width: 25px;
     height: 25px;
   }
   #img2_weibo{
       width: 25px;
       height: 25px;
   }
   .container a{
       font-size: 15px;
       color:#000;
       font-weight:bold;
   }
  
   .search #s1{
      border: 2px solid #fff;
      width: 300px;
      height: 30px;
      border-radius: 5px;
     margin: 55px 1180px;
    
  }
  .search #s2{
      position: absolute;
      width: 65px;
      height: 30px;
      border-radius: 5px;
      margin:-83px 550px;
      background-color:#aaa;
  }
  .dl_img{
      position: absolute;
     margin-top:-80px;
    
      display:block;

  }
  .dl_img a{
      font-size: 12px;
      color:#fff;
      margin-right:10px;
  }
  /*div.nav {
    width:500px;

}*/

.nav ul {

    overflow:hidden;
}

.nav ul li {
    
    float:left;
    list-style:none;
}

.nav ul li ul {
    display:none;
}

/*a {
    color: #FFFFFF;
    display:inline-block;
    line-height:30px;
    height:30px;
    width: 100px;
    /*background:red;
    text-decoration:none;
    text-align:center;
} */


.nav ul li:hover ul {
    display:block;
    margin-left:0px;
    padding-left:0px;
}

/*.nav ul li:hover a{
    background-color:#aaa;
}*/

.nav ul li:hover ul li {
    list-style:none;
    float:none;
    /*text-align:center;*/
}

.nav ul li:hover ul li a {
    color: #000;
    display:inline-block;
    /*height:30px;
    width:100x;*/
    text-decoration:none;
    text-align:center;
    font-size: 15px;
    /*background-color: #aaa;*/
}
.nav a{
      font-size: 20px;
      margin: 10px 20px;
      color:#000;
      font-weight: bold;

  }

/*.nav ul li:hover ul li:hover a {
    background-color:aqua;
}*/

</style>

<!--<template>
  <header id="header" class="container mb-4">
    <nav class="navbar navbar-light">
      <a class="navbar-brand" href="index.html">
        <img src="img/header/logo.png" alt="">
      </a>
      <div class="form-inline">
        <div class="input-group">
          <input type="text" class="form-control p-0" placeholder="请输入你要搜索的内容" aria-label="Recipient's username" aria-describedby="basic-addon2">
          <div class="input-group-append h-75">
            <img class="btn p-0" src="img/header/search.png">
          </div>
        </div>
      </div>
      <nav id="signout" class="my-2 my-md-0 mr-md-3 small">
        <a class="p-1 text-muted" href="register.html">注册</a>
        <b class="p-1 text-muted" >|</b>
        <a class="p-1 text-muted" id="btnLogin" href="#">登录</a>
      </nav>
      <nav id="signin" class="my-2 my-md-0 mr-md-3 small">
        <a class="p-1" href="#" title="我的收藏">
          <img src="img/header/care.png">
        </a>
        <b class="p-1">|</b>
        <a class="p-1" href="#" title="我的订单">
          <img src="img/header/order.png">
        </a>
        <b class="p-1">|</b>
        <a class="p-1" href="cart.html" title="我的购物车">
          <img src="img/header/shop_car.png" alt="">
        </a>
        <a class="p-1 text-muted" href="#">Welcome <span id="uname">dangdang</span></a>
        <a class="p-1 text-muted" id="btnSignout" href="javascript:;">注销</a>
      </nav>
    </nav>
    <ul class="nav nav-pills">
      <li class="nav-item">
        <a class="nav-link text-muted active" href="index.html">首页</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-muted" href="#">学习用品</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-muted" href="#">私人定制</a>
      </li>
    </ul>
  </header>
</template>
<script>
export default {
  
}
</script>
<style scoped>
  定制搜索框的大小
  #header>.navbar>.form-inline>.input-group>input{
    width:300px;
  }
  /*定制主导航当前导航项的字体颜色
  #header>.nav .nav-link.active,
  #header>.nav .nav-link:hover{
    background:none;
    font-weight:bold;
  }
</style>*/