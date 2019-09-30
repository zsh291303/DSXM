const express=require("express");
const pool=require("../pool");
var router=express.Router();

// 登录
router.get("/login",(req,res) => {
  var uphone = req.query.uphone
  var upwd = req.query.upwd
  var sql = "select uid,uphone from user_login where uphone=? and upwd=?"
  pool.query(sql,[uphone,upwd],(err,result) => {
    if(err)  throw  err
    if(result.length!=0){
      var id = result[0].uphone
      req.session.uid = id
      res.send({code:1, msg:"登录成功",data:result})
    }else{
      res.send({code:-1, msg:"用户名或密码不正确"})
    }
  })
})

// 注册
router.get("/res",(req,res)=>{
  // var obj = req.query
  var uphone = req.query.uphone
  var upwd = req.query.upwd
  var sqls = "select uphone from user_login where uphone = ?"
  pool.query(sqls,[uphone],(err,result)=>{
    if(err) throw err
    if(result.length!=0){
      res.send({code:2,msg:"该手机号已被注册"})
    }else{
      var sql = `insert into user_login (uphone,upwd) values ('${uphone}','${upwd}')`
      pool.query(sql,(err,result)=>{
        if (err) throw err
        if(result.affectedRows>0){
          res.send({code:1,msg:"注册成功"})
        }else{
          res.send({code:-1,msg:"注册失败请重试"})
        } 
      })
    }
  })
})

module.exports=router;