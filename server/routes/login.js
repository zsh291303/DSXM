const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/login",(req,res) => {
  var uname = req.query.uname
  var upwd = req.query.upwd
  var sql = "select * from user_login where uname=? and upwd=?"
  pool.query(sql,[uname,upwd],(err,result) => {
    if(err)  throw  err
    if(result.length!=0){
      res.send({code:1, msg:"登录成功"})
    }else{
      res.send({code:-1, msg:"用户名或密码不正确"})
    }
  })
})

module.exports=router;