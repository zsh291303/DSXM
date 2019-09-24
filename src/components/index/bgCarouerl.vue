<template>
  <div class="bg-carouerl">
    <div id="bg-carouerl" :style="{width: innerWidth+'px'}">
      <div class="carousel mt-5" @mouseenter="stop" @mouseleave="start">
        <div class="carousel-inner" :class="ulClass" :style="ulStyle">
          <div class="carousel-item" :style="{width: innerWidth+'px'}">
            <h2  >最新菜单</h2>
          </div>        
          <div class="carousel-item" :style="{width: innerWidth+'px'}">
            <h2 >每小时热门菜谱</h2>
          </div>
          <div class="carousel-item" :style="{width: innerWidth+'px'}">
            <h2 >今日最受欢迎菜谱</h2>
          </div>
          <div class="carousel-item" :style="{width: innerWidth+'px'}">
            <h2 >一周热门菜谱</h2>
          </div>
        </div>
        <div class="carousel-inner" :class="ulClass" :style="ulStyle">
          <div class="carousel-item" v-for="(items,i) of lists" :key="i" :style="{width: innerWidth+'px'}">
            <div v-for="(item,j) of items" :key="j" class="flex">
              <a href="javascript:;">
                <img :src="item.url" alt="">
                <div class="zero">
                  <table></table>
                  <div class="first">
                    <p>{{item.title}}</p>
                    <p>{{item.pople}}</p>
                  </div>
                  <div class="scoend">
                    <p>{{item.method}}</p>
                    <p>{{item.summary}}</p>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="carousel-item" :style="{width: innerWidth+'px'}">
            <div v-for="(item,a) of lists[0]" :key="a">
              <a href="javascript:;">
                <img :src="item.url" alt="">
              </a>
            </div>
          </div>
        </div>
      </div>
      <!--2.左右箭头-->
      <a href="javascript:;" @click="move(1)" class="carousel-control-next">
        <span class="carousel-control-next-icon"></span>
      </a>
      <a href="javascript:;" @click="move(-1)" class="carousel-control-prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <!--3.轮播指示符-->
      <ul class="carousel-ind">
        <li v-for="(img,idx) of listsc" :key="idx" :class="idx==i?'li_hover':''" @click="moveTo(idx)">{{img.name}}</li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      i:0,
      innerWidth:1140,
      ulClass:{ hasTrans:true },
      listsc:[],
      canClick:true,
      lists:[],
      timer:null
    }
  },
  methods:{
    stop(){
      clearInterval(this.timer)
    },
    start(){
      this.timer = setInterval(() => {
        this.move(1)
      },3000)
    },
    moveTo(i){
      if(this.canClick){
        this.i = i
        this.canClick = false
        setTimeout(() => {
          this.canClick = true
        },300)
      }
    },
    move(i){
      if(this.canClick){
        this.canClick = false;
        if(i == -1 && this.i == 0){
          this.ulClass.hasTrans = false;
          setTimeout(() => {
            this.i = this.lists.length;
            setTimeout(() => {
              this.ulClass.hasTrans = true
              this.i += i
              setTimeout(() => {
                this.canClick = true
              },200)
            },50)
          },50)
        }else if(i == 1 && this.i == this.lists.length-1){
          this.i += i
          setTimeout(() => {
            this.ulClass.hasTrans = false
            setTimeout(() => {
              this.i = 0
              setTimeout(() => {
                this.ulClass.hasTrans = true
                setTimeout(() => {
                  this.canClick = true
                })
              },50)
            },50)
          },200) 
        }else{
          this.i += i
          setTimeout(() => {
            this.canClick = true 
          },300)
        }
      }
    },
    loads(){
      this.axios.get(
        "/indexsc"
      ).then(result=>{
        console.log(result.data)
        this.listsc = result.data
      })
      this.axios.get(
        "/indexs"
      ).then(result=>{
        //console.log(result)
        for(var i=0;i<result.data.length;i+=4){
          this.lists.push(result.data.slice(i,i+4))
        }
        console.log(this.lists,2)
      })
    }
  },
  created(){
    this.loads()
    this.start()
  },
  computed:{
    ulStyle(){
      var width = this.innerWidth*(this.lists.length+1)+"px";
      var marginLeft = -this.i*this.innerWidth+"px";
      return { width,marginLeft }
    }
  }
}
</script>
<style>
  #bg-carouerl{
    position: relative;
  }
  #bg-carouerl>.carousel{
    
    margin-top:60px;
    overflow:hidden;
    border-radius: 5px
  }
  #bg-carouerl div:last-child{
    position: relative;
  }
  #bg-carouerl>.carousel:after{
    content:"";
    display:block;
    clear:both;
  }
   #bg-carouerl>.carousel>.carousel-inner.hasTrans{
     transition:all .5s linear;
   }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item{
    display:block;
    float:left;
    display: flex;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>h2{
    width: 100%;
    text-align: center;
    margin: 60px 0 35px
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>a:last-child{
    display:block;
    height:50px;
    color:#fff;
    text-align:center;
    font-size:15px;
    line-height:50px;
    text-decoration:none;
    background-color:#f68cc6;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>div{
    width:calc(100%/4);
    position: relative;
    text-align: center;
  }  
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>div>div{
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 30%;
    background-color: rgba(204, 204, 204, .5)
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>div>a{
    color: #060606;
    text-align: left;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>div>a:hover{
    text-decoration-line: none;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>div img{
    width:85%;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero{
    height: 94px;
    overflow: hidden;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.first,
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.scoend{
    width: 85%;
    margin-left: calc(15%/2) ;
    padding: 15px;
    overflow: hidden;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.first>p,
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.scoend>p{
    margin: 0;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.first{
    background-color: #fff;
    transition: all .5s linear; 
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.first:hover{
    margin-top : -94px;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.scoend{
    background-color: #ccc;
    transition: all .5s linear; 
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.scoend:hover{
    margin-top: -94px;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.first>p:first-child,
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.scoend>p:first-child{
    font-size: 20px;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.first>p:last-child,
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.scoend>p:last-child{
    margin-top: 10px;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item>.flex .zero>.first>p:last-child{
    color: #f68cc6
  }
  /* #bg-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(2)>a:last-child{
    background-color:#fa9c77;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(3)>a:last-child{
    background-color:#ba4b5d;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(4)>a:last-child{
    background-color:#02c0f0f5;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(5)>a:last-child{
    background-color:#bc76dd;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(6)>a:last-child{
    background-color:#539788;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(7)>a:last-child{
    background-color:#c67ee79b;
  }
  #bg-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(8)>a:last-child{
    background-color:#2f49079b;
  } */

  /*重写指示符的样式*/
  #bg-carouerl .carousel-ind{
    position: absolute;
    top: 12%;
    left: 70%;
    width: 30%;
    margin: 0;
    display: flex;
    list-style: none;
  }
  #bg-carouerl .carousel-ind li{
    margin-left:6px;
    margin-right:6px;
    top:60px;
  }
  #bg-carouerl .carousel-ind .li_hover{
    color: red;
  }
  /* #bg-carouerl .carousel-indicators>li:hover, .carousel-indicators>li.active{
    transform:scale(1.3)
  }
  #bg-carouerl .carousel-indicators>li:first-child{
    background-color:#f68cc6;
  }
  #bg-carouerl .carousel-indicators>li:nth-child(2){
    background-color:#fa9c77;
  }
  #bg-carouerl .carousel-indicators>li:nth-child(3){
    background-color:#ba4b5d;
  }
  #bg-carouerl .carousel-indicators>li:nth-child(4){
    background-color:#02c0f0f5;
  }
  #bg-carouerl .carousel-indicators>li:nth-child(5){
    background-color:#bc76dd;
  }
  #bg-carouerl .carousel-indicators>li:nth-child(6){
    background-color:#539788;
  }
  #bg-carouerl .carousel-indicators>li:nth-child(7){
    background-color:#c67ee79b;
  }
  #bg-carouerl .carousel-indicators>li:nth-child(8){
    background-color:#2f49079b;
  }  */
  /*重写左右箭头的样式*/
  #bg-carouerl .carousel-control-prev,
  #bg-carouerl .carousel-control-next{
    width: 40px;
    height: 100%;
    background-color:rgba(95, 95, 92, 0);
    top: 0;
    margin-left:-40px;
    border-radius:0.25rem;
  }
  #bg-carouerl .carousel-control-next{
    margin-right:-40px;
  }
  #bg-carouerl .carousel-control-next>.carousel-control-next-icon,
  #bg-carouerl .carousel-control-prev>.carousel-control-prev-icon{
    width: 60px;
    height: 130px;
    position: absolute;
    top: 48%
  }
</style>
