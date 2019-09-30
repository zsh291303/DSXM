<template>
  <div >
    <div class="container " id="mf">
      <my-header></my-header>
        <div>
            <a class="text-dark a_style1" href=""><img class="img_style1 mr-2" src="../../public/img/shizhong.png" alt="">酉时宜散步，是养肾的最佳时间，吃黑色食物、动物肝脏对养肾有好处。</a>
        </div>
        <ul class="nav nav-tabs mt-5 u1 w1 m1">
            <li class="nav-item"><a data-toggle="tab" href="#tab1" class="nav-link text-dark font-weight-bold h-100 m-0">人群膳食</a></li>
            <li class="nav-item "><a data-toggle="tab" href="#tab2" class="nav-link text-dark font-weight-bold h-100 m-0">疾病调理</a></li>
            <li class="nav-item"><a data-toggle="tab" href="#tab3" class="nav-link text-dark font-weight-bold h-100 m-0">功能性调理</a></li>
            <li class="nav-item"><a data-toggle="tab" href="#tab4" class="nav-link text-dark font-weight-bold h-100 m-0">脏腑调理</a></li>
        </ul>
        <div class="tab-content d-flex w1 m1">
            <div id="tab1" class="tab-pane active bg1">
                <h4 class="d-flex mt-3 ml-3">人群膳食</h4>
                <div class="d-flex">
                    <router-link class="m-3 text-dark" :to="`/Food2`">孕妇</router-link>
                    <!-- <a class="m-3 text-dark" href="">孕妇</a> -->
                    <a class="m-3 text-dark" href="">幼儿</a>
                    <a class="m-3 text-dark" href="">青少年</a>
                    <a class="m-3 text-dark" href="">老人</a>
                </div>
            </div>
            <div id="tab2" class="tab-pane bg1">
                <h4 class="d-flex m-3">疾病调理</h4>
                <div class="d-flex">
                    <a class="m-3 text-dark" href="">前列腺</a>
                    <a class="m-3 text-dark" href="">糖尿病</a>
                    <a class="m-3 text-dark" href="">高血压</a>
                    <a class="m-3 text-dark" href="">冠心病</a>
                </div>
            </div>
            <div id="tab3" class="tab-pane bg1">
                <h4 class="d-flex m-3">功能性调理</h4>
                <div class="d-flex">
                    <a class="m-3 text-dark" href="">美容</a>
                    <a class="m-3 text-dark" href="">减肥</a>
                    <a class="m-3 text-dark" href="">延缓衰老</a>
                    <a class="m-3 text-dark" href="">消化不良</a>
                </div>
            </div>
            <div id="tab4" class="tab-pane bg1">
                <h4 class="d-flex m-3">脏腑调理</h4>
                <div class="d-flex">
                    <a class="m-3 text-dark" href="">补心</a>
                    <a class="m-3 text-dark" href="">养肝</a>
                    <a class="m-3 text-dark" href="">补肺</a>
                    <a class="m-3 text-dark" href="">补肾</a>
                </div>
            </div>
        </div>
            <ul class="list-unstyled d-flex mt-5">
                <li class="mr-5 my-3 border m2"><a class="a_style2" href="">人群膳食菜谱</a></li>
                <li class="mr-5 my-3 border"><a class="a_style2" href="">人群膳食中医保健</a></li>
                <li class="mr-5 my-3 border"><a class="a_style2" href="">人群膳食养生妙方</a></li> 
                <li class="mt-4 margin_li"><a class="text-danger mr-1" href="">最新</a>|<a class="text-dark ml-1" href="">最热</a></li>          
            </ul>
        <div class="container p-0 " :style="{width:innerWidth+'px'}">
            <div class="d-flex m-0 p-0 mt-4"  v-for="(item,i) of list" :key="i" :style="{width:innerWidth+'px'}">
                <div class="z1 w-100 m-0 p-0" v-for="(itemf,j) of item" :key="j" >
                    <a href="javascript:;">
                    <img :src="itemf.pic" alt="">
                    <span class="s3">{{itemf.affect}}</span>
                    </a>
                    <div class="c1" >
                        <h6 class="h6">{{itemf.food_name}}</h6>
                        <span class="span">36 评论 2853 人气</span>
                        <p class="p">{{itemf.writer}}</p>
                        <div class="c2">
                            <ul class="list-unstyled pt-4">
                                <li><img src="img/cook.png" alt="">3步 / 大概5分钟</li>
                                <li><img src="img/fire.png" alt="">其它工艺 / 甜味</li>
                            </ul>
                        </div>
                    </div>                
                </div>
            </div>
        </div>  
            <!-- <div class="rounded m3 z1">
                <a href="">
                <img src="../../public/img/fimgs/food01.jpg" alt="">
                <span class="s3">防癌</span>
                </a>
                <div class="c1">
                    <h6 class="h6">黄瓜芹菜苹果汁</h6>
                    <span class="span">36 评论 2853 人气</span>
                    <p class="p">静默成诗</p>
                </div>
            </div>
            <div class="rounded m3 z1">
                <a href="">
                <img src="../../public/img/fimgs/food01.jpg" alt="">
                <span class="s3">防癌</span>
                </a>
                <div class="c1">
                    <h6 class="h6">黄瓜芹菜苹果汁</h6>
                    <span class="span">36 评论 2853 人气</span>
                    <p class="p">静默成诗</p>
                </div>
            </div>
            <div class="rounded m3 z1">
                <a href="">
                <img src="../../public/img/fimgs/food01.jpg" alt="">
                <span class="s3">防癌</span>
                </a>
                <div class="c1">
                    <h6 class="h6">黄瓜芹菜苹果汁</h6>
                    <span class="span">36 评论 2853 人气</span>
                    <p class="p">静默成诗</p>
                </div>
            </div>-->      
        <div class="mt-5 margin1">
            <ul class="pagination">
                <li class="page-item" :class="pno<=1?'disabled':''">
                  <a class="page-link " href="javascript:;" @click="change(-1)">上一页</a>
                </li>
                <li class="page-item mr-1" v-for="i of pnum" :key="i" :class="i==pno?'active':''">
                    <a class="page-link" href="javascript:;" @click="jump(i)">{{i}}</a>
                </li>
                <li class="page-item" :class="pno>=pnum?'disabled':''">
                    <a class="page-link" href="javascript:;" @click="change(1)">下一页</a>
                </li>
                <span class="s1">共{{pnum}}页</span>
            </ul>
        </div> 
      <my-footer></my-footer>      
    </div>
  </div>
</template>
<script>
export default {
    data(){
        return{
            pno:1,
            pnum:0,
            list:[],
            innerWidth:990,
        }
    },
    methods: {
      jump(i){
        this.pno = i
        this.loadMore()
      },
      change(i){
        this.pno += i
        this.loadMore()
      },
        loadMore(){
            var url="/food/detail1";
            var obj={pno:this.pno}
            this.list = []
            // console.log(this.pno)
            this.axios.get(url,{params:obj}).then(res=>{
              // console.log(res.data.data)
               var rows=res.data.data;
               for(var i=0;i<rows.length;i+=4){
                   this.list.push(rows.slice(i,i+4))
               }
              // console.log(this.list)
            })
            this.axios.get(
              "/food/detail11"
            )
            .then(result=>{
              // console.log(result.data.pnum)
              this.pnum=result.data.pnum
            })
            /*this.axios.get(
                "detail1"
            ).then(result=>{console.log(result.data.data)})  */  
        }
    },
    created(){
        this.loadMore();
    }, 
    
}
</script>
<style scoped>
    #mf .container{
        margin:0 auto;
    }
    #mf .border{
        width:180px;
        height:45px;
        background-color:#ff3232;
    }
    #mf .img_style1{
        width:30px;
        height:30px
    }
    #mf .a_style1{
        font-size:25px;
        margin:0 auto
    }
    #mf .a_style2{
        line-height:45px;
        color:white;
        font-size:20px;
    }
    #mf .margin_li{
        margin-left:225px
    }
    #mf .c1{
        background-color:white;
        width:232px;
        height:100px;
        transform:translate(7px);
    }
    #mf .c2{
        background-color:#fff;
        font-size:17px;
        width:232px;
        height:100px;
        opacity:0;
        color:#666;
        
    }
    #mf .c1:hover .c2{
      opacity:1;
      transform:translateY(-100px);
    }
    #mf .h6{
        display:block;
        width:130px;
        height:24px;
        line-height:24px;
        padding:11px 14px 0px;
        color:black;
        font-weight:bold;
        font-size:14px;
        text-align:left;             
    }
    #mf .span{
        display:block;
        width:130px;
        height:26px;
        line-height:26px;
        padding:0px 14px 0px;
        font-size:12px;
        color:#999;
        text-align:left; 
    }
    #mf .p{
        display:block;
        height:23px;
        width:232px;
        line-height:23px;
        padding:0px 14px 0px;
        font-size:12px;
        color:#ff3232;
        text-align:left;
    }
    #mf .s1{
        display:block;
        width:60px;
        height:38px;
        line-height:38px;
    }
    #mf .margin1{
        margin-left:620px;
    }
    #mf .s2{
        display:block;
        width:40px;
        font-weight:bold;

    }
    #mf .s3{
        display: inline-block;
        vertical-align:top;
        height:32px;
        padding:0px 12px;
        background:#60a531;
        line-height:32px;
        color:#fff;
        box-shadow:0px 1px 1px rgba(0,0,0,0.5);
        font-size:14px;
        position:absolute;
        left:166px;
        top:20px;
        width:80px;
    }
    #mf .z1{
        position:relative;
        width:232px;
        
    }
    #mf .bg1{
        background-color:#fff;
        width:1110px;
    }
    #mf .u1{
        height:50px;       
        background:rgba(255,255,255,0.5)
    }
    #mf .w1{
        width:990px;
    }
    #mf .m1{
        margin:0 auto;
    }
    #mf .m2{
        margin-left:60px;
    }
    #mf .m3{
        margin-left:20px;
    }
</style>
