const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
router.get('/detail1',(req,res)=>{
    var pno=req.query.pno;
    var ps = 16
    if(!pno){
        pno=1
    }
    var sql1="SELECT * from Pfood LIMIT ?,?";
    var offset=(pno-1)*ps;
    ps=parseInt(ps);
    pool.query(sql1,[offset,ps],(err,result)=>{
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result});
    })
    /*var sql="select * from Pfood"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })*/
})
router.get('/detail11',(req,res)=>{
    var ps = 16
    var sql = "select * from Pfood"
    pool.query(sql,[],(err,result)=>{
      if(err) throw err
      var pnum = result.length/ps
      res.send({pnum:pnum})
    })
})
router.get('/kind1',(req,res)=>{
    var sql="select * from Population_dite"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })

})
router.get('/detail2',(req,res)=>{
    var gid=req.query.gid;
    if(!gid){
        res.send({code:-1,msg:'gid required'});
        return;
    }
    var sql="select * from Dfood where gid=?"
    pool.query(sql,[gid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })
})
router.get('/kind2',(req,res)=>{
    var sql="select * from Disease_management"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })

})
router.get('/detail3',(req,res)=>{
    var cid=req.query.cid;
    if(!cid){
        res.send({code:-1,msg:'cid required'});
        return;
    }
    var sql="select * from Ffood where cid=?"
    pool.query(sql,[cid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })
})
router.get('/kind3',(req,res)=>{
    var sql="select * from Functional_conditioning"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })

})
router.get('/detail4',(req,res)=>{
    var zid=req.query.zid;
    if(!zid){
        res.send({code:-1,msg:'zid required'});
        return;
    }
    var sql="select * from Rfood where zid=?"
    pool.query(sql,[zid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })
})
router.get('/kind4',(req,res)=>{
    var sql="select * from Regulation_Zangfu"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })

})
router.get('/good',(req,res)=>{
    var sql="select * from Suitable_materials"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
router.get('/bad',(req,res)=>{
    var sql="select * from Taboo_materials"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
module.exports=router;
