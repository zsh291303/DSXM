<template>
  <div id="index" class="container p-0">
    <my-header></my-header>
    <!-- 小轮播 -->
    <smcarouerl></smcarouerl>
    <!-- 中间图 -->
    <middle></middle>
    <!-- 大轮播 -->
    <bgcarouerl></bgcarouerl>
    <my-footer class="mt-5 ml-4"></my-footer>
  </div>
</template>
<script>
import smCarouerl from "../components/index/smCarouerl.vue"
import middle from "../components/index/middle.vue"
import bgCarouerl from "../components/index/bgCarouerl.vue"
export default {
  components:{
    "smcarouerl":smCarouerl,
    "middle":middle,
    "bgcarouerl":bgCarouerl
  },
  data(){
    return {
      lists:[],
      pc:"",
      listp:[],
      uphone:""
    }
  },
  methods:{
    loadp(){
      this.axios.get(
        "/indexpc"
      ).then(result=>{
        //console.log(result)
      })
      this.axios.get(
        "/indexp"
      ).then(result=>{
        //console.log(result)
      })
    },
    loads(){
      this.axios.get(
        "/indexsc"
      ).then(result=>{
        //console.log(result)
      })
      this.axios.get(
        "/indexs"
      ).then(result=>{
        //console.log(result)
        for(var i=0;i<result.data.length;i+=4){
          this.lists.push(result.data.slice(i,i+4))
        }
        //console.log(this.lists,2)
      })
    }
  },
  created(){
   
    this.loadp();
    this.loads();
    this.uphone = this.$route.query.uphone 
    var uphone = localStorage.getItem('uphone')
    console.log(uphone)

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
