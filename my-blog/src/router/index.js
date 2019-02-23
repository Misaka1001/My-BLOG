import Vue from 'vue'
import Router from 'vue-router'
import Home from '../components/pages/Home.vue'
import Article from '../components/pages/Article.vue'
import MyInfo from '../components/pages/MyInfo.vue'
import MsgBoard from '../components/pages/MsgBoard.vue'
import ArticleDetails from '../components/pages/ArticleDetails.vue'
Vue.use(Router)

export default new Router({
  mode : 'history',
  routes: [
    {
      path: '/',
      component: Home
    },
    {
      name : 'home',
      path: '/home',
      component: Home
    }, {
      name : 'article',
      path: '/article',
      component: Article
    }, {
      name : 'myInfo',
      path: '/myinfo',
      component: MyInfo
    }, {
      name : 'articleDetails',
      path : '/articledetails/:id?',
      component : ArticleDetails
    },{
      name : 'msgBoard',
      path: '/msgboard',
      component: MsgBoard
    },{
      path : '*',
      redirect : '/home'
    }
  ]
})
