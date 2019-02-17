import Vue from 'vue'
import router from './router/index'
import app from './App.vue'
import ElementUI from 'element-ui'
import axios from 'axios'
import 'element-ui/lib/theme-chalk/index.css'
import 'element-ui/lib/theme-chalk/display.css'
import store from './store.js'
Vue.config.productionTip = false
Vue.prototype.$http = axios
Vue.use(ElementUI)
new Vue({
  el: '#app',
  router,
  store,
  beforeCreate(){
    store.commit('getMyInfo')
  },
  components: {
    app
  },
  template: '<app/>'
})
