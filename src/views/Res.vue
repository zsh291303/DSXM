<template>

<div class="reg">
  <h3 class="n1_title">
  注册美食杰
  </h3>
<a href="" class="reg_0">更多第三方登录方式</a>
<div class="reg_bg">
    <a class="reg_1" href="">手机注册</a>
    <a class="reg_2" href="">|邮箱注册</a>

<div class="n1_loginitem">
    <input type="text" class="text forcheck pn_forcheck"
    id="mobile" v-model="uphone" name="uname" placeholder="请输入手机号">
    </div>
    <div class="n1_loginitem">
      <table></table>
    <input type="text" class="text forcheck pyzm_forcheck" id="mobile_code" placeholder="请输入验证码">
    <a class="phone_yzmbtn sended" id="phone_yzmbtn" href="">免费获取验证码</a>
    </div>
    <div class="n1_loginitem">
    <input type="password" class="password forcheck pw_forcheck" name="upwd" v-model="upwd" id="password_mobile"
    placeholder="请输入密码" >
</div>
<div class="n1_loginitem" >
    <label>
        <input type="checkbox" id="mobile_check" v-model="choosed" class="checkbox">我已阅读并且同意
<a href="" >美食杰用户协议</a>
       
      </label >
    </div>
      <div class="n1_loginitem" style="height:33px;">
      <input type="button" class="submit" :disabled="!choosed" id="send" value="注册" @click="reg">
    </div>
    <router-link class="golink" id="n1_gozc" :to="`/Login`">已有账号马上登录</router-link>
</div>
</div>


</template>

<script>
export default {
  data(){
    return{
      choosed:false,
      uphone:"",
      upwd:""
    }
  },
  methods:{
    reg(){
      this.res()
    },
    res(){
      var reg1 = /1[3-9]\d{9}/i;
      var reg2 = /[0-9a-zA-Z]{6,12}/i
      if(!reg1.test(this.uphone)){
        alert("手机号格式错误")
        return
      }
      if(!reg2.test(this.upwd)){
        alert("密码格式错误")
        return
      }
      this.axios.get(
        "/user/res",
        {
          params:{
            uphone:this.uphone,
            upwd:this.upwd
          }
        }
      )
      .then(result => {
        console.log(result)
        if(result.data.code == 2){
          alert(result.data.msg)
          return
        }
        if(result.data.code == 1){
          alert(result.data.msg)
        }else{
          alert(result.data.msg)
        }
     }) 
    }
  }
}
</script>

<style>
    .reg{
        width:1000px;
        height: 800px;
        background-color:#fff;
        margin:40px auto 0px;
       padding: 1px 0px 60px;

    }
    .reg_0{
        color: #666;
       margin-left: 450px;
       }
    .reg_0:hover{
        color:#ec5541;
       text-decoration:underline;
    }
   .reg_bg{
       width: 600px;
       height:500px ;
       background-color:cornsilk;
       border: 1px solid cornsilk;
     margin-left: 220px;
     margin-top: 30px;
   }
   .reg_1{
       font-size: 20px;
       color:#000;
       margin-left: 62px;
       text-decoration: none;
   }
   .reg_2{
       font-size: 20px;
       color:#aaa;
       margin-left: 10px;
       text-decoration: none;
   }
   .reg_2:hover{
       color:#ec5541;
       text-decoration: underline;
   }
    .n1_title{
        height: 43px;
        line-height: 42px;
        font-size: 22px;
        color:#333;
        text-align: center;
        margin: 40px auto;
    }
    .n1_loginitem{
        height: 100px;
        width: 230px;
        margin-bottom: 13px;
        margin-left: 370px;
    }
    .reg_bg .n1_loginitem  #mobile {
        margin-left: -330px;
        margin-top: 30px;
        }
    .reg_bg .n1_loginitem .text {
        height: 30px;
        border:1px solid #ddd;
        border-radius: 4px;
        line-height: 22px;
        font-size: 15px;
        color:#333;
        margin-top: 10px;
        margin-bottom: 10px;
      margin-left: -200px;
        padding: 11px;
      width: 290px;
      font-family: "Hiragino Sans CB","Microsoft Yahei"
    }
    .reg_bg .n1_loginitem .password{
        height: 30px;
        border:1px solid #ddd;
        border-radius: 4px;
        line-height: 22px;
        font-size: 15px;
        color:#333;
        margin-top: 10px;
        margin-bottom: 10px;
      margin-left: -330px;
        padding: 11px;
      width: 290px;
      font-family: "Hiragino Sans CB","Microsoft Yahei"
    }
 .phone_yzmbtn{
     width: 130px;
     float:right;
     background: #8fc31f;
     border:1px solid #75ab49;
    display:block;
    color:#fff;
    line-height: 30px;
    height: 30px;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    margin-top: 10px
 }
 .phone_yzmbtn:hover{
     background:#ddd;
 }
 .phone_yzmbtn .sended{
     background: #ddd;
     border: 1px solid #ccc;
     color:#999
 }
 
    .n1_loginitem .submit{
        display: inline-block;
        vertical-align: top;
        *display: inline;
        *zoom:1;
        height: 35px;
        border:1px solid #db432e;
        border-radius: 4px;
        line-height: 30px;
        font-size: 15px;
        color:#fff;
        padding: 0px 24px;
        margin-left: -160px;
        font-family: "Hiragino Sans CB","Microsoft Yahei";
        background: #ec5541;
        cursor: pointer;
        margin-top: -50px;
    }
    .n1_loginitem .submit:hover{
        background: #db432e
        }
    .n1_loginitem label{
        color:#666;
        font-size: 13px;
        line-height: 22px;
        margin-top:-10px;
        margin-left: -200px;
        
    }
    .n1_loginitem input{
        margin-top: 10px;
        position: relative;
    }
    .n1_loginitem label a{
        color: #666;
       margin-left: 10px;
    
    }
    .n1_loginitem label a:hover{
        text-decoration: underline;
        color:#ec5541;
    }
   .golink{
       color:#333;
       font-size: 15px;
       display: block;
       margin-top: 20px;
       text-align: center;
       line-height: 66px;
       height: 66px;

   }
   .golink:hover{
       color:#ec5541;
       text-decoration: underline;
   }
 
</style>