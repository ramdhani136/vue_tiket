import Vue from 'vue'
import VueRouter from 'vue-router'

const routes = [
    { path: '/foo', component: Foo },
    { path: '/bar', component: Bar }
  ]

Vue.use(VueRouter)
const router = new VueRouter({
    routes,
    hasbang:false,
    mode:'history'
})
export default router