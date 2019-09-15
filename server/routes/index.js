const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/indexfc",(req,res)=>{
  var sql = "select * from ms_food_time"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})
router.get("/indexf",(req,res)=>{
  var sql = "select * from ms_big_carousel_item"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})
router.get("/indexpc",(req,res)=>{
  var sql = "select * from ms_index_pic_title"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})
router.get("/indexp",(req,res)=>{
  var sql = "select * from ms_index_food"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})
router.get("/indexsc",(req,res)=>{
  var sql = "select * from ms_small_carousel_bar"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})
router.get("/indexs",(req,res)=>{
  var sql = "select * from ms_small_carousel_item"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err
    res.send(result)
  })
})

module.exports=router;