<template>
<div class="reg">
    <h3 class="n1_title">注册美食杰</h3>
    <a href="" class="reg_0">更多第三方登录方式</a>
    <div class="reg_bg">
        <router-link class="reg_1" :to="`/resp`">手机注册</router-link>
        <router-link class="reg_2" :to="`/rese`">| 邮箱注册</router-link>
        <div class="n1_loginitem">
            <input type="text" class="text forcheck pn_forcheck"
            id="mobile" v-model="uemail" name="uname" @focus="show3" placeholder="请输入邮箱地址"><br>
            <span v-show="spanShow3">{{emailAlert}}</span>
        </div>
        <div class="n1_loginitem">
            <input type="password" class="password forcheck pw_forcheck" name="upwd" v-model="uepwd" id="password_mobile" @focus="show4"
            placeholder="请输入密码" ><br>
            <span v-show="spanShow4">{{epwdAlert}}</span>
        </div>
        <div class="n1_loginitem" >
            <label>
                <input type="checkbox" id="mobile_check" v-model="choosed" class="checkbox">我已阅读并且同意
                <a href="javascript:;" >美食杰用户协议</a>
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
      spanShow3:false,
      spanShow4:false,
      emailAlert:'',
      epwdAlert:'',
      choosed:false,
      uemail:"",
      uepwd:""
    }
  },
  methods:{
    show3(){
        this.spanShow3 = true
    },
    show4(){
        this.spanShow4 = true
    },
    reg(){
      this.res()
    },
    res(){
      if(this.uemail == "" || this.uepwd == ""){
        alert('邮箱或密码不能为空')
        return
      }
      this.axios.get(
        "/user/res",
        {
          params:{
            uphone:this.uemail,
            upwd:this.uepwd
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
    uemail(){
        console.log(this.uemail)
     
      if(this.uemail ==  ""){
          this.spanShow3 = false
          return
      }
       var reg1 = /^\w+((.\w+)|(-\w+))@[A-Za-z0-9]+((.|-)[A-Za-z0-9]+).[A-Za-z0-9]+$/i;
      if(!reg1.test(this.uemail)){
        this.emailAlert = "邮箱格式错误"
      }else{
        this.emailAlert = '邮箱格式正确'
        return
      }
    },
    uepwd(){
        console.log(this.uepwd)
        if(this.uepwd === ""){
            this.spanShow4 = false
            return
        }
    var reg2 = /[0-9a-zA-Z]{6,12}/i
    if(!reg2.test(this.uepwd)){
        this.epwdAlert = "密码格式错误"
      }else{
        this.epwdAlert = "密码格式正确"
      }
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
       color:#aaa;
       margin-left: 62px;
       text-decoration: none;
   }
   .reg_2{
       font-size: 20px;
       color:#000;
       margin-left: 10px;
       text-decoration: none;
   }
   .reg_1:hover{
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