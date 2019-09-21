<template>
  <div id="middle">
    <div id="middle-head" class="my-5">
      <h2>九月，养阴润肺，防秋燥</h2>
      <p>
        <a href="javascript:;">更多食材></a>
      </p>
    </div>
    <div id="middle-bodyon" class="">
      <p v-for="(itempc,ipca) of listpc" :key="ipca" @mouseenter="pass(ipca)" :class="ipca == ipc-1?'p_hover':''">
        <a href="javascript:;">
          {{itempc.title}}
        </a>
      </p>
    </div>
    <div id="middle-bodydown">
      <div v-for="(itemp,ip) of listp" :key="ip" class="re">
        <a href="javascript:;">
          <img :src="itemp.url" alt=""> 
        </a>
        <div class="ab">
          <a href="javascript:;">
            <p>{{itemp.fname}}</p>
          </a>
        </div>
      </div>
    </div>
  </div>  
</template>
<script>
export default {
  data(){
    return{
      ipc:1,
      listpc:[],
      listp:[]
    }
  },
  methods:{
    pass(i){
      // console.log(i)
      this.ipc = i+1
    },
    loadp(){
      this.axios.get(
        "/indexpc"
      ).then(result=>{
        // console.log(result)
        this.listpc = result.data
      })
      this.axios.get(
        "/indexp",
        {
          params:{
            tid:this.ipc
          }
        }
      ).then(result=>{
        // console.log(result)
        this.listp = result.data
      })
    },
  },
  created(){
    this.loadp()
  },
  watch:{
    ipc(){
      this.loadp()
    }
  }
}
</script>
<style>
  #middle{
    position: relative;
  }
  #middle-head{
    display: flex;
    justify-content: space-between
  }
  #middle-head>h2{
    margin-left: 34%;
  }
  #middle-head>p>a{
    display: block;
    margin-top: 5px
  }
  #middle-bodyon{
    display: flex
  }
  #middle-bodyon>p{
    padding: 5px 5px
  }
  #middle-bodyon>.p_hover{
    background-color:red;
    color: #fff 
  }
  #middle-bodyon>p>a{
    color: #000
  }
  #middle-bodyon>p>a:hover{
    color: #000;
    text-decoration: none;
  }
  #middle-bodydown{
    display: flex;
    width: 100%;
    position: relative;
  }
  #middle-bodydown>div{
    width: calc(100%/8);
  }
  #middle-bodydown>div>a{
    display: block;
    width: 100%;
  }
  #middle-bodydown>div>a>img{
    width: 100%;
    border-radius: 50%;
    transition: all .5s linear
  }
  #middle-bodydown>div>a>img:hover{
    border-radius: 10%;
  }
  #middle-bodydown .re{
    position: relative;
  }
  #middle-bodydown .ab{
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 15%;
    background-color:  rgba(204, 204, 204, .2);
  }
  #middle-bodydown .ab>a{
    color: black;
  }
  #middle-bodydown .ab>a:hover{
    color: #faa;
    text-decoration: none
  }
  /* #middle-bodydown> */
</style>
