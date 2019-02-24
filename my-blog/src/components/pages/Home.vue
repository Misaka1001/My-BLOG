<template>
  <div class="home-wrapper">
    <el-row class="top-article">
      <el-col :span="20" :offset="2">
        <el-carousel :interval="4000" type="card" class="carousel" height="200px">
          <el-carousel-item
            v-for="(item,index) in (articleMeta && articleMeta.slice(0,3))"
            :key="index"
          >
            <router-link
              class="cover"
              :to="{name : 'articleDetails',params:{ index : index, id : item.id}}"
            >
              <img :src="articleMeta && item.cover" :title="item.title">
            </router-link>
          </el-carousel-item>
        </el-carousel>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="16" :xs="24">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>博主文章</span>
            <router-link to="/article">
              <el-button style="float: right; padding: 3px 0" type="text">更多</el-button>
            </router-link>
          </div>
          <div v-for="(item,index) in articleMeta" :key="index" class="text item">
            <router-link
              :to="{name : 'articleDetails',params:{ index : index, id : item.id}}"
            >{{ articleMeta && item.title }}</router-link>
          </div>
        </el-card>
      </el-col>
      <el-col :span="8" :xs="24">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>番剧更新</span>
          </div>
          <div v-for="(item, index) in bangumi" :key="index" class="text item">
            <p>{{ item.title }}</p>
            <span>{{item.index}}</span>
            <span>{{item.time}}</span>
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>
<script>
import { mapState } from "vuex";
export default {
  created() {
    this.getBangumi();
  },
  data() {
    return {
      bangumi: ""
    };
  },
  methods: {
    getBangumi() {
      this.$http.get("/api/getBangumi").then(res => {
        this.$data.bangumi = JSON.parse(res.data).filter(item => {
          return item.isTody === 1;
        });
      });
    }
  },
  computed: {
    ...mapState(["articleMeta"])
  }
};
</script>

<style scoped lang='less'>
.home-wrapper {
  .el-row {
    margin: 20px;
    &.top-article {
      .el-carousel {
        .el-carousel__item {
          display: flex;
          justify-content: center;
          align-items: center;
          .cover {
            img {
              height: 100%;
              width: 100%;
            }
          }
        }
      }
    }
    .box-card {
      height: 320px;
      margin-right: 10px;
      .item {
        font-size: 14px;
        margin-bottom: 10px;
      }
    }
  }
}
</style>