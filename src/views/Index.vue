<template>
  <div>
    <h2>首页</h2>
  </div>
</template>
<script>
export default {
  data(){
    return {

    }
  },
  methods:{
    load(){
      this.axios.get(
        "indexfc"
      ).then(result=>{
        console.log(result)
      })
    }
  },
  created(){
    this.load();
    
  }
}
</script>