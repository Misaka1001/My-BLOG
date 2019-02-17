import Vue from 'vue'
import Router from 'vue-router'
import Home from '../components/pages/Home.vue'
import Article from '../components/pages/Article.vue'
import MyInfo from '../components/pages/MyInfo.vue'
import MsgBoard from '../components/pages/MsgBoard.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/home',
      name: 'Home',
      component: Home
    }, {
      path: '/article',
      name: 'Article',
      component: Article
    }, {
      path: '/myinfo',
      name: 'MyInfo',
      component: MyInfo
    }, {
      path: '/msgboard',
      name: 'MsgBoard',
      component: MsgBoard
    }
  ]
})
