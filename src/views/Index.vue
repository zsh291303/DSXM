<template>
  <div id="index" class="container p-0">

    <h2>首页</h2>
    <!-- 小轮播 -->
    <smcarouerl></smcarouerl>
    <!-- 中间图 -->
    <div id="index-food" class="middle"></div>
    <!-- 大轮播 -->
    <div id="bg-carousel" class="foot"></div>

  </div>
</template>
<script>
import smCarouerl from "../components/index/smCarouerl.vue"
export default {
  components:{
    "smcarouerl":smCarouerl
  },
  data(){
    return {
      lists:[],
      pc:"",
      listp:[],
    }
  },
  methods:{
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
   
    this.loadp();
    this.loads();

  },
  computed:{
    
  }
}
</script>
<style>
  body{
    background-color:#FAE8C8; 
  } 
</style>
