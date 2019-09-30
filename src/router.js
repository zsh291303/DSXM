import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import Login from './views/Login'
import Food1 from './views/Food1'
import Food2 from './views/Food2'
import Resp from './views/Resp'
import Rese from './views/Rese'
import mFood from './views/mFood'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: Index},
    {path: '/Index',component: Index},
    {path: '/Login',component: Login},
    {path: '/Food2',component: Food2},
    {path: '/Food1',component: Food1},
    {path: '/Resp',component: Resp},
    {path: '/Rese',component: Rese},
    {path: '/mfood',component: mFood},
  ]
})
