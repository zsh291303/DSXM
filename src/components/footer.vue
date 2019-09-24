<template>
<footer id="footer">
<div class="footer_1 row"> 
   <img id="img_wj" src="img/footer/wj.png" alt="" class="col-4">
   <ul class="list-unstyled d-flex  justify-content-center col-6">
   <li>
   <img src="img/footer/tb1.png" alt="" class="img_row1">
    <p class=" text-muted text-center">
      点击进入
      <br>
      美食杰官方微博
    </p>
  </li>
  <li>
      <img src="img/footer/tb2.png" alt="" class="img_row1">
        <p class=" text-muted text-center">
          点击进入
        <br>
        美食杰QQ空间
      </p>
  </li>
   <li>
   <img src="img/footer/m1.png" alt="" class="img_row1" >
     <p class=" text-muted text-center">扫描二维码
    <br>
    添加美食杰为微信好友
  </p>
  </li>
  <li>
    <img src="img/footer/m2.png" alt="" class="img_row1">
<p class=" text-muted text-center">
  扫描二维码
<br>
下载美食杰官方客户端
</p>
  </li>
</ul>

<p class="col-10 yq" > 友情链接</p>
<hr >
<ul class="list-unstyled d-flex justify-content-around col-10" >
<li><a  class="text-muted " href="">美食</a></li>
<li><a class="text-muted " href="">体质测试</a></li>
<li><a class="text-muted" href="">搜狐美食</a></li>
<li><a class="text-muted" href="">美食天下</a></li>
<li><a class="text-muted" href="">365音乐吧</a></li>
<li><a class="text-muted" href="">伊特</a></li>
<li><a class="text-muted" href="">39健康饮食</a></li> 

</ul>
<hr >
<ul  class="list-unstyled d-flex justify-content-around col-10" style="font-size: 10px">
    <li><a  class="text-muted " href="">公司简介</a></li>
    <li><a class="text-muted " href="">关于我们</a></li>
    <li><a class="text-muted" href="">产品下载</a></li>
    <li><a class="text-muted" href="">加入我们</a></li>
    <li><a class="text-muted" href="">联系我们</a></li>
    <li><a class="text-muted" href="">商务合作</a></li>
    <li><a class="text-muted" href="">用户协议</a></li> 
</ul>
<p class="p_a">
  <a href="" class="gray_a">京ICP备14030359号</a>
  /
  <a href="" class="gray_a">
    <img src="img/footer/icon.png" alt="">
    京公网安备11010802026928</a>
  Copyright © 2003-2019 MEISHIJ CO.,LTD.
</p>
  </div>  
</footer>
</template>
<script>
export default {
    
}
</script>
<style>
    .footer_1{
    width: 100%;
    height: 480px;
    background-color:rgba(138, 127, 117, 0.801)
  
    }
    #img_wj{
      margin-left: 20px;
      width: 350px;
      height:200px;
     
    }
    
    .footer ul li img{
      width: 100px;
      height: 100px;
    }
   .footer ul li a{
     text-decoration: none;
   }
  hr{
    
    width:100%; 
    height:1px;  
    border-color:slategrey;
  }
  .gray_a{
   color:rgb(56, 61, 66);
    text-decoration: none;}

.yq{
  text-align:left;
  color:rgb(56, 61, 66);
}
  
  .p_a{
    margin-left: 700px;
    font-size: 12px;
    
  }
  .img_row1{
    margin:20px 20px;
  }
</style>