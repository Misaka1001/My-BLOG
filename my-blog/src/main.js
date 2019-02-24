import Vue from 'vue'
import router from './router/index'
import app from './App.vue'
import axios from 'axios'
import 'element-ui/lib/theme-chalk/index.css'

//引入Elment组件
import {
  container,
  header,
  row ,
  col ,
  card,
  tooltip ,
  dropdown,
  popover,
  dropdownMenu,
  dropdownItem,
  carousel,
  carouselItem,
  button,
  tag,
  input,
  footer
} from 'element-ui';
Vue.use(container)
Vue.use(header)
Vue.use(row)
Vue.use(col)
Vue.use(card)
Vue.use(tooltip)
Vue.use(dropdown)
Vue.use(popover)
Vue.use(dropdownMenu)
Vue.use(dropdownItem)
Vue.use(carousel)
Vue.use(carouselItem)
Vue.use(button)
Vue.use(tag)
Vue.use(input)
Vue.use(footer)
import 'element-ui/lib/theme-chalk/display.css'
import store from './store.js'
Vue.config.productionTip = false
//将axios写到vue原型，以便在其他组件中使用
Vue.prototype.$http = axios
new Vue({
  el: '#app',
  router,
  store,
  beforeCreate(){
    store.dispatch('getMyInfo'),
    store.dispatch('getArticleMeta')
  },
  components: {
    app
  },
  template: '<app/>'
})
