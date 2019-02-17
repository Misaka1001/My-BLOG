import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)
export default new Vuex.Store({
    state: {
        info : {}
    },
    mutations: {
        getMyInfo(state) {
            axios.get('/api/getMyInfo').then((res) => {
                state.info = res.data[0];
            })
        }
    },
    actions: {

    }
})