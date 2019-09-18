import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "axios"

Vue.config.productionTip = false;
Vue.prototype.axios=axios;
axios.defaults.baseURL="http://127.0.0.1:5050";


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
