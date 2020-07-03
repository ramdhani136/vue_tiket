import Vue from 'vue'
import VueRouter from 'vue-router'

import CategoryComponent from '../components/category/CategoryComponent.vue'
import CreateCategory from '../components/category/CreateCategory.vue'

const routes = [
    {name:'categori', path:'/categori', component:CategoryComponent},
    {name:'CreateCategory', path:'/categori/create', component:CreateCategory},
  ]

Vue.use(VueRouter)
const router = new VueRouter({
    routes,
    hasbang:false,
    mode:'history'
})
export default router