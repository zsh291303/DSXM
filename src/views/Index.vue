<template>
  <div id="index" class="container">

    <h2>首页</h2>
    <!-- 小轮播 -->
    <div id="sm-carouerl" class="top">
      <div class="carousel" :style="{width:innerWidth+'px'}">
        <div class="carousel-inner">
          <div v-for="(itemf,i) of listf" :key="i" class="carousel-item" :style="{width:innerWidth+'px'}">
            <div v-for="(item,j) of itemf" :key="j" :style="{width:innerWidth+'px'}">
              <a href="javascript:;">
                <img :src="item.url" alt="">
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 中间图 -->
    <div id="index-food" class="middle"></div>
    <!-- 大轮播 -->
    <div id="bg-carousel" class="foot"></div>

  </div>
</template>
<script>
export default {
  data(){
    return {
      i:0,
      innerWidth:window.innerWidth,
      listf:[],
      lists:[],
      pc:"",
      listp:[]
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
    loadp(){
      this.axios.get(
        "/indexpc"
      ).then(result=>{
        console.log(result)
      })
      this.axios.get(
        "/indexp"
      ).then(result=>{
        console.log(result)
      })
    },
    loads(){
      this.axios.get(
        "/indexsc"
      ).then(result=>{
        console.log(result)
      })
      this.axios.get(
        "/indexs"
      ).then(result=>{
        console.log(result)
        for(var i=0;i<result.data.length;i+=4){
          this.lists.push(result.data.slice(i,i+4))
        }
        console.log(this.lists,2)
      })
    }
  },
  created(){
    this.loadf();
    this.loadp();
    this.loads();
    window.addEventListener("resize",()=>{
      this.innerWidth = window.innerWidth
    })
  },
  computed:{
    ulStyle(){
      var width = this.innerWidth*(this)
    }
  }
}
</script>
<style>
  body{
    background-color:#FAE8C8; 
  } 
</style>
