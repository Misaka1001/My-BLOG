import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)
export default new Vuex.Store({
    state: {
        info : null,
        articleMeta : null
    },
    mutations: {
        initInfo(state, data){
            state.info = data;
        },
        initArticleMeta(state,data){
            state.articleMeta = Array.from(data);
        }
    },
    actions: {
        getMyInfo(context) {
            axios.get('/api/getMyInfo').then((res) => {
                context.commit('initInfo', res.data[0]);
            })
        },
        getArticleMeta(context){
            axios.get('/api/getArticleMeta').then((res) => {
                context.commit('initArticleMeta',res.data)
            })
        }
    }
})