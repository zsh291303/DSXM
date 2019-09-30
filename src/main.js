import Vue from 'vue'
import App from './App.vue'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import router from './router'
import store from './store'
import axios from "axios"
import header from "./components/header"
import footer from "./components/footer"

Vue.use(ElementUI)

Vue.config.productionTip = false;
Vue.prototype.axios=axios;
axios.defaults.baseURL="http://127.0.0.1:5050";

Vue.component("my-header",header);
Vue.component("my-footer",footer);


new Vue({
  el:'#app',
  router,
  store,
  render: h => h(App)
}).$mount('#app')
