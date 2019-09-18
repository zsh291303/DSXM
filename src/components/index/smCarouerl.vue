<template>
<div>
  <div id="sm-carouerl" class="top">
    <div class="carousel" :style="{width:innerWidth+'px'}">
      <div class="carousel-inner" :class="ulClass" :style="ulStyle">
        <div v-for="(itemf,i) of listf" :key="i" class="carousel-item" :style="{width:innerWidth+'px'}">
          <div v-for="(item,j) of itemf" :key="j">
            <a href="javascript:;">
              <img :src="item.url" alt="">
            </a>
          </div>
        </div>
        <div class="carousel-item" :style="{width:innerWidth+'px'}">
          <div v-for="(itemfa,a) of listf[0]" :key="a">
            <a href="javascript:;">
              <img :src="itemfa.url" alt="">
            </a>
          </div>
        </div>
        <!-- 箭头 -->
        <a href="javascript:;" @click="move(1)" class="carousel-control-next">
          <span class="carousel-control-next-icon"></span>
        </a>
        <a href="javascript:;" @click="move(-1)" class="carousel-control-prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <!--3.轮播指示符-->
        <ul class="carousel-indicators">
          <li v-for="(img,idx) of listf" :key="idx" :class="idx==i?'active':''" @click="moveTo(idx)"></li>
        </ul>
      </div>
    </div>
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
      canClick:true,
      listf:[],
    }
  },
  methods:{
    loadf(){
      this.axios.get(
        "/indexfc"
      ).then(result=>{
        console.log(result)
      })
      this.axios.get(
        "/indexf"
      ).then(result=>{
        console.log(result)
        for(var i=0;i<result.data.length;i+=3){
          this.listf.push(result.data.slice(i,i+3))
        }
        console.log(this.listf,1)
      })
    },
  },
  created(){
    this.loadf();
     window.addEventListener("resize",()=>{
      this.innerWidth = 1140
    })
  },
  computed: {
    ulStyle(){
      var width = this.innerWidth*(this.listf.length+1)+"px";
      var marginLeft = -this.i*this.innerWidth+"px";
      return { width,marginLeft }
    }
  },
}
</script>
<style>
  #sm-carouerl>.carousel{
    margin-top:60px;
    overflow:hidden;
  }
  #sm-carouerl>.carousel:after{
    content:"";
    display:block;
    clear:both;
  }
   #sm-carouerl>.carousel>.carousel-inner.hasTrans{
     transition:all .2s linear;
   }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item{
    display:block;
    float:left;
    display: flex;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item>a:last-child{
    display:block;
    height:50px;
    color:#fff;
    text-align:center;
    font-size:15px;
    line-height:50px;
    text-decoration:none;
    background-color:#f68cc6;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item>div{
    width:calc(100%/3);
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item>div img{
    width:100%;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(2)>a:last-child{
    background-color:#fa9c77;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(3)>a:last-child{
    background-color:#ba4b5d;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(4)>a:last-child{
    background-color:#02c0f0f5;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(5)>a:last-child{
    background-color:#bc76dd;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(6)>a:last-child{
    background-color:#539788;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(7)>a:last-child{
    background-color:#c67ee79b;
  }
  #sm-carouerl>.carousel>.carousel-inner>.carousel-item:nth-child(8)>a:last-child{
    background-color:#2f49079b;
  }

  /*重写指示符的样式*/
  .carousel-indicators{
    bottom:130px;
  }
  .carousel-indicators li{
    width:15px;height:15px;
    background-color:#fff;
    margin-left:6px;
    margin-right:6px;
    border-radius: 50%;
    top:60px;
  }
  .carousel-indicators>li:hover, .carousel-indicators>li.active{
    transform:scale(1.3)
  }
  .carousel-indicators>li:first-child{
    background-color:#f68cc6;
  }
  .carousel-indicators>li:nth-child(2){
    background-color:#fa9c77;
  }
  .carousel-indicators>li:nth-child(3){
    background-color:#ba4b5d;
  }
  .carousel-indicators>li:nth-child(4){
    background-color:#02c0f0f5;
  }
  .carousel-indicators>li:nth-child(5){
    background-color:#bc76dd;
  }
  .carousel-indicators>li:nth-child(6){
    background-color:#539788;
  }
  .carousel-indicators>li:nth-child(7){
    background-color:#c67ee79b;
  }
  .carousel-indicators>li:nth-child(8){
    background-color:#2f49079b;
  }
  /*重写左右箭头的样式*/
  .carousel-control-prev,
  .carousel-control-next{
    width:40px;height:100px;
    background-color:rgba(95, 95, 92, 0.3);
    top:35%;
    margin-left:40px;
    border-radius:0.25rem;
  }
  .carousel-control-next{
    margin-right:40px;
  }
</style>
