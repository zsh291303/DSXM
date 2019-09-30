<template>
<div id="regp">
<div  class="reg">
    <h3 class="n1_title">注册美食杰</h3>
    <a href="" class="reg_0">更多第三方登录方式</a>
    <div class="reg_bg">
        <router-link class="reg_1" :to="`/resp`">手机注册</router-link>
        <router-link class="reg_2" :to="`/rese`">| 邮箱注册</router-link>
        <div class="n1_loginitem">
            <input type="text" class="text forcheck pn_forcheck"
            id="mobile" v-model="uphone" name="uname" @focus="show1" placeholder="请输入手机号"><br>
            <span v-show="spanShow1">{{phoneAlert}}</span>
        </div>
        <div class="n1_loginitem">
            <table></table>
            <input type="text" class="text forcheck pyzm_forcheck" id="mobile_code" placeholder="请输入验证码">
            <button class="phone_yzmbtn sended" id="phone_yzmbtn" @click="time" :disabled="dtime!=30">
                <span v-if="dtime==30">免费获取验证码</span>
                <span v-else>请{{dtime}}s后重试</span>
            </button>
        </div>
        <div class="n1_loginitem">
            <input type="password" class="password forcheck pw_forcheck" name="upwd" v-model="upwd" id="password_mobile" @focus="show2"
            placeholder="请输入密码" ><br>
            <span v-show="spanShow2">{{pwdAlert}}</span>
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
</div>


</template>

<script>
export default {
  data(){
    return{
      dtime:30,
      spanShow1:false,
      spanShow2:false,
      phoneAlert:'',
      pwdAlert:'',
      choosed:false,
      uphone:"",
      upwd:""
    }
  },
  methods:{
    time(){
      var timer = setInterval(()=>{
        this.dtime--
        if(this.dtime<=0){
            this.dtime = 30
            clearInterval(timer)
        }
      },1000)
    },
    show1(){
        this.spanShow1 = true
    },
    show2(){
        this.spanShow2 = true
    },
    reg(){
      this.res()
    },
    res(){
        if(this.uphone=="" || this.upwd == ""){
           alert('手机号码或密码不能为空')
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
  },
  watch:{
    uphone(){
        console.log(this.uphone)
     
      if(this.uphone ==  ""){
          this.spanShow1 = false
          return
      }
       var reg1 = /1[3-9]\d{9}/i;
      if(!reg1.test(this.uphone)){
        this.phoneAlert = "手机号格式错误"
      }else{
        this.phoneAlert = '手机号格式正确'
        return
      }
    },
    upwd(){
        console.log(this.upwd)
        if(this.upwd === ""){
            this.spanShow2 = false
            return
        }
    var reg2 = /[0-9a-zA-Z]{6,12}/i
    if(!reg2.test(this.upwd)){
        this.pwdAlert = "密码格式错误"
      }else{
        this.pwdAlert = "密码格式正确"
      }
    }
  }
}
</script>

<style>
    #regp .reg{
        width:1000px;
        height: 800px;
        background-color:#fff;
        margin:40px auto 0px;
       padding: 1px 0px 60px;

    }
    #regp .reg_0{
        color: #666;
       margin-left: 450px;
       }
    #regp .reg_0:hover{
        color:#ec5541;
       text-decoration:underline;
    }
   #regp .reg_bg{
       width: 600px;
       height:500px ;
       background-color:cornsilk;
       border: 1px solid cornsilk;
     margin-left: 220px;
     margin-top: 30px;
   }
   #regp .reg_1{
       font-size: 20px;
       color:#000;
       margin-left: 62px;
       text-decoration: none;
   }
   #regp .reg_2{
       font-size: 20px;
       color:#aaa;
       margin-left: 10px;
       text-decoration: none;
   }
   #regp .reg_2:hover{
       color:#ec5541;
       text-decoration: underline;
   }
    #regp .n1_title{
        height: 43px;
        line-height: 42px;
        font-size: 22px;
        color:#333;
        text-align: center;
        margin: 40px auto;
    }
    #regp .n1_loginitem{
        height: 100px;
        width: 230px;
        margin-bottom: 13px;
        margin-left: 370px;
    }
    #regp .reg_bg .n1_loginitem  #mobile {
        margin-left: -330px;
        margin-top: 30px;
        }
    #regp .reg_bg .n1_loginitem .text {
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
    #regp .reg_bg .n1_loginitem .password{
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
 #regp .phone_yzmbtn{
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
 #regp .phone_yzmbtn:hover{
     background:#ddd;
 }
 #regp .phone_yzmbtn .sended{
     background: #ddd;
     border: 1px solid #ccc;
     color:#999
 }
 
    #regp .n1_loginitem .submit{
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
    #regp .n1_loginitem .submit:hover{
        background: #db432e
        }
    #regp .n1_loginitem label{
        color:#666;
        font-size: 13px;
        line-height: 22px;
        margin-top:-10px;
        margin-left: -200px;
        
    }
    #regp .n1_loginitem input{
        margin-top: 10px;
        position: relative;
    }
    #regp .n1_loginitem label a{
        color: #666;
       margin-left: 10px;
    
    }
    #regp .n1_loginitem label a:hover{
        text-decoration: underline;
        color:#ec5541;
    }
   #regp .golink{
       color:#333;
       font-size: 15px;
       display: block;
       margin-top: 20px;
       text-align: center;
       line-height: 66px;
       height: 66px;

   }
   #regp .golink:hover{
       color:#ec5541;
       text-decoration: underline;
   }
 
</style>