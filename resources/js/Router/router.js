import Vue from 'vue'
import VueRouter from 'vue-router'

import CategoryComponent from '../components/category/CategoryComponent.vue'
const routes = [
    {name:'categori', path:'/categori', component:CategoryComponent},
  ]

Vue.use(VueRouter)
const router = new VueRouter({
    routes,
    hasbang:false,
    mode:'history'
})
export default router