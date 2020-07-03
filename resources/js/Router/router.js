import Vue from 'vue'
import VueRouter from 'vue-router'

import CategoryComponent from '../components/category/CategoryComponent.vue'
import CreateCategory from '../components/category/CreateCategory.vue'
import EditCategory from '../components/category/EditCategory.vue'

import TiketComponent from '../components/tiket/TiketComponent.vue'
import CreateTiket from '../components/tiket/CreateTiket.vue'

const routes = [
    {name:'categori', path:'/categori', component:CategoryComponent},
    {name:'CreateCategory', path:'/categori/create', component:CreateCategory},
    {name:'edit_categori', path:'/categori/edit/:id', component:EditCategory},

    {name:'tiket', path:'/tiket', component:TiketComponent},
    {name:'CreateTiket', path:'/tiket/create', component:CreateTiket},
  ]

Vue.use(VueRouter)
const router = new VueRouter({
    routes,
    hasbang:false,
    mode:'history'
})
export default router