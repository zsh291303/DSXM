<template>
    <div class="container ">
        <div>
            <a class="text-dark a_style1" href=""><img class="img_style1 mr-2" src="../../public/img/shizhong.png" alt="">未时小肠养生期间，宜心平气和的静下来，适合下棋等安静的活动</a>
        </div>
        <ul class="nav nav-tabs mt-5 u1 w1 m1">
            <li class="nav-item"><a data-toggle="tab" href="#tab1" class="nav-link text-dark font-weight-bold h-100">人群膳食</a></li>
            <li class="nav-item "><a data-toggle="tab" href="#tab2" class="nav-link text-dark font-weight-bold h-100">疾病调理</a></li>
            <li class="nav-item"><a data-toggle="tab" href="#tab3" class="nav-link text-dark font-weight-bold h-100">功能性调理</a></li>
            <li class="nav-item"><a data-toggle="tab" href="#tab4" class="nav-link text-dark font-weight-bold h-100">脏腑调理</a></li>
        </ul>
        <div class="tab-content d-flex w1 m1">
            <div id="tab1" class="tab-pane active bg1">
                <h4 class="d-flex mt-3 ml-3">人群膳食</h4>
                <div class="d-flex">
                    <a class="m-3 text-dark" href="">孕妇</a>
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
        <div class="mt-5 border bg-white w1 m1">
            <div class="border-bottom pl-4">
                <h4 class="d-flex font-weight-bold mt-3">孕妇如何饮食调养</h4>
                <p class="d-flex mb-1 p2">　大多数准妈妈在确认自己怀孕后，便开始操心起自己的营养来。担心营养不够，怕宝宝发育不良。孕妇的营养问题成为了家人及朋友"万众瞩目"的焦点。</p>
                <p class="d-flex p2">在此期间，应注意饮食的合理搭配、饮食多样化</p>
            </div>
            <div class="border-bottom mt-3 pl-4">
                <h3 class="d-flex mb-3 text-success">适宜食材</h3>
                <p class="d-flex">
                    <span class="p2">1.膳食以清淡、易消化吸收为宜</span>
                    <span class="ml-4 p2">2.补充充足的优质蛋白质</span>
                    <span class="ml-4 p2">3.增加钙、铁、锌、碘及维生素的摄入量</span>
                </p>
                <div>
                    <div class="d-flex" :style="{width:innerWidth+'px'}" v-for="(item,i) of list" :key="i">
                        <div class="mr-3" v-for="(itemf,j) of item" :key="j">
                            <img :src="itemf.mimg" alt="">
                            <p class="p2">{{itemf.mname}}</p>
                        </div>
                    </div>
                    <!-- <div>
                        <img src="../../public/img/chakan.gif" alt="">
                    </div> -->
                </div>
            </div>
            <div class="border-bottom my-3 pl-4 ">
                <h3 class="d-flex mb-3 text-danger">禁忌食材</h3>
                <p class="d-flex">
                    <span class="p2">1.忌油炸、生冷、甜腻食物</span>
                    <span class="ml-4 p2">2.忌辛辣、刺激性食物</span>
                    <span class="ml-4 p2">3.忌腌制、熏制等富含亚硝酸盐的食品</span>
                </p>
                <div class="d-flex" :style="{width:innerWidth+'px'}" v-for="(itemb,b) of listb" :key="b">
                    <div class="mr-3" v-for="(itemc,c) of itemb" :key="c">
                        <img :src="itemc.timg" alt="">
                        <p class="p2">{{itemc.tname}}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="my-4">
            <ul class="list-unstyled d-flex m2">
                <li class=" border l1 m"><a class="text-dark" href="">孕妇菜谱</a></li>
                <li class=" border l1 ml-4"><a class="text-dark" href="">孕妇中医保健</a></li>
                <li class=" border l1 ml-4"><a class="text-dark" href="">孕妇养生妙方</a></li>
                <li class="mt-2 margin_li"><a class="text-danger mr-1" href="">最新</a>|<a class="text-dark ml-1" href="">最热</a></li>     
            </ul>
        </div>
       <div class="d-flex">
            <div class="rounded z1 m2">
                <a href="">
                <img  src="../../public/img/fimages/food01.jpg" alt="">
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
                <img src="../../public/img/fimages/food02.jpg" alt="">
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
                <img src="../../public/img/fimages/food03.jpg" alt="">
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
                <img src="../../public/img/fimages/food04.jpg" alt="">
                <span class="s3">防癌</span>
                </a>
                <div class="c1">
                    <h6 class="h6">黄瓜芹菜苹果汁</h6>
                    <span class="span">36 评论 2853 人气</span>
                    <p class="p">静默成诗</p>
                </div>
            </div>
        </div>
        <div class="mt-5 margin1">
            <ul class="pagination">
                <li class="page-item disabled">
                    <a class="page-link " href="">上一页</a>
                </li>
                <li class="page-item active mr-1">
                    <a class="page-link" href="">1</a>
                </li>
                <li class="page-item mr-1">
                    <a class="page-link" href="">2</a>
                </li>
                <li class="page-item mr-1">
                    <a class="page-link" href="">3</a>
                </li>
                <li class="page-item mr-1">
                    <a class="page-link" href="">4</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="">5</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="">下一页</a>
                </li>
                <span class="s1">共5页</span>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            i:0,
            list:[],
            b:0,
            listb:[],
            innerWidth:990,
        }
    },
    methods: {
        loadgood(){
            this.axios.get(
                "/food/good"
            ).then(result=>{
                //console.log(result.data)
                var rows=result.data;
                for(var i=0;i<rows.length;i+=10){
                    this.list.push(rows.slice(i,i+10))
                }
                })
        },
        loadbad(){
            this.axios.get(
                "/food/bad"
            ).then(result=>{
                //console.log(result.data)
                var rows=result.data;
                for(var b=0;b<rows.length;b+=10){
                    this.listb.push(rows.slice(b,b+10))
                }
            })
        }
    },
    created() {
        this.loadgood();
        this.loadbad();
    },
}
</script>
<style scoped>
    .img_style1{
        width:30px;
        height:30px
    }
    .a_style1{
        font-size:25px;
        margin:0 auto
    }
    .bg1{
        background-color:#fff;
        width:1110px;
    }
    .p1{
        display:block;
    }
    .p2{
        color:#666;
        line-height:24px;
        font-size:14px;
    }
    .u1{
        height:50px;       
        background:rgba(255,255,255,0.5)
    }
    .l1{
        display:inline-block;
        vertical-align:top;
        line-height:46px;
        font-size:18px;
        color:#333;
        font-family:Microsoft Yahei;
        padding:0px 22px;
    }
    .margin_li{
        margin-left:440px
    }
    .s3{
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
        left:180px;
        top:20px;
    }
    .z1{
        position:relative;
    }
    .c1{
        background-color:white;
        width:232px;
        height:100px;
    }
    .h6{
        display:block;
        width:130px;
        height:24px;
        line-height:24px;
        padding:11px 14px 0px;
        color:black;
        font-weight:bold;
        font-size:14px;             
    }
    .span{
        display:block;
        width:130px;
        height:26px;
        line-height:26px;
        padding:0px 14px 0px;
        font-size:12px;
        color:#999; 
    }
    .p{
        display:block;
        height:23px;
        width:80px;
        line-height:23px;
        padding:0px 14px 0px;
        font-size:12px;
        color:#ff3232;
    }
    .w1{
        width:990px;
    }
    .m1{
        margin:0 auto;
    }
    .m2{
        margin-left:60px;
    }
    .m3{
        margin-left:20px;
    }
     .margin1{
        margin-left:665px;
    }
     .s1{
        display:block;
        width:60px;
        height:38px;
        line-height:38px;
    }
</style>
