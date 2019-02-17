<template>
  <div class="home-wrapper">
    <el-row class="top-article">
      <el-col :span="20" :offset="2">
        <el-carousel :interval="4000" type="card" height="200px">
          <el-carousel-item v-for="(item,index) in articleMeta" :key="index">
            <img :src="articleMeta && item.cover" alt>
          </el-carousel-item>
        </el-carousel>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="14">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>博主文章</span>
            <el-button style="float: right; padding: 3px 0" type="text">更多</el-button>
          </div>
          <div
            v-for="(item,index) in articleMeta"
            :key="index"
            class="text item"
          >{{ articleMeta && item.title }}</div>
        </el-card>
      </el-col>
      <el-col :span="8" :offset="1">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>番剧更新</span>
            <el-button style="float: right; padding: 3px 0" type="text">更多</el-button>
          </div>
          <div v-for="o in 4" :key="o" class="text item">{{'列表内容 ' + o }}</div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>
<script>
import { mapState } from "vuex";
export default {
  computed: {
    ...mapState(["articleMeta"])
  }
};
</script>

<style scoped lang='less'>
.home-wrapper {
  margin-top: 20px 0px;
  .el-row {
    margin: 20px;
    &.top-article {
      .el-carousel {
        img {
          width: 100%;
        }
      }
    }
    .box-card {
      height: 350px;
    }
  }
}
</style>