<!--Login.vue 用户登录组件-->
<template>
  <div class="login">
  <h3 class="n1_title">
  登录美食杰
  </h3>

<div class="n1_loginitem">
    <input type="text" class="text" v-model="uname" name="uname" placeholder="请输入用户名">
    <input type="password" class="password" v-model="upwd" name="upwd" placeholder="请输入密码">
    <label class="label_1">
        <input type="checkbox" id="auto_login_next" value="auto" class="checkbox">
        下次自动登录
        <a href="" id="n1_gozc"> 忘记密码？</a>
      </label>
      <div>
      <input type="button" class="submit_1" id="send" @click="login" value="登录">
    </div>
    <a href="" class="golink" id="n1_gozc">还没有账号 免费注册</a>
</div>

    </div>
</template>
<script>
export default {
   data(){
     return {
      uname:"", 
      upwd:""  
    }
    },
   methods:{
     login(){
  
       var u = this.uname;
       var p = this.upwd;
       //2: 创建正则表达式  3~12位置 字母数字
       var reg = /^[a-z0-9\\u4e00-\\u9fa5]{2,12}$/i;
       //3: 判断如何错误 用户名提示
       if(!reg.test(u)){
          alert("用户名格式不正确");
          return;
       }
       //4: 判断如何错误 密码提示
       if(!reg.test(p)){
         alert("密码格式不正确");
         return;
       }
       //5: 发送ajax axios
       var url = "/user/login";
       var obj = {uname:u,upwd:p};
       this.axios.get(url,{params:obj}).then(res=>{
       //6: 回调函数:接收服务器返回数据
       console.log(res.data)
       var code = res.data.code;
       if(code==-1){
     //7: 失败 提示
        alert(res.data.msg);
       }else{
         //成功跳转
       this.$router.push("/Index")
       }    
     })
   }
}
}
</script>

<style >
  .login{
        width:1000px;
        height: 600px;
        background-color:#fff;
        margin:40px auto 0px;
       padding: 1px 0px 60px;

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
        margin-bottom: 14px;
        margin-left: 385px;
    }
    .n1_loginitem .text{
        height: 40px;
        border:1px solid #ddd;
        border-radius: 4px;
        line-height: 22px;
        font-size: 15px;
        color:#333;
        margin-bottom: 30px;
        margin-left: -10px;
        padding: 11px;
      width: 290px;
      font-family: "Hiragino Sans CB","Microsoft Yahei"
    }
    .n1_loginitem .password{
        height: 40px;
        border:1px solid #ddd;
        border-radius: 4px;
        line-height: 22px;
        font-size: 15px;
        color:#333;
        padding: 11px;
        margin-left: -10px;
      width: 290px;
      font-family: "Hiragino Sans CB","Microsoft Yahei"
    }
    .n1_loginitem .submit_1{
        display: inline-block;
        vertical-align: top;
        *display: inline;
        *zoom:1;
        height: 42px;
        border:1px solid #db432e;
        border-radius: 4px;
        line-height: 40px;
        font-size: 15px;
        color:#fff;
        padding: 0px 24px;
        margin-left: 42px;
        font-family: "Hiragino Sans CB","Microsoft Yahei";
        background: #ec5541;
        cursor: pointer;
        margin-top:10px;
    }
    .n1_loginitem .submit_1:hover{
        background: #db432e
        }
    .n1_loginitem .label_1{
        color:#666;
        font-size: 13px;
        line-height: 22px;
        margin-top: 7px;
        margin-left:-77px;

    }
    .n1_loginitem input{
        margin-top: 10px;
        position: relative;
    }
    .n1_loginitem label a{
        color: #666;
       margin-left: 80px;
    }
    .n1_loginitem label a:hover{
        text-decoration: underline;
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