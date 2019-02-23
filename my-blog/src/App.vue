<template>
  <el-container class="wrapper">
    <el-header class="header">
      <blog-header></blog-header>
    </el-header>
    <el-row class="content">
      <el-col :span="5" :offset="2" class="aside hidden-sm-and-down">
        <aside-info></aside-info>
        <aside-recommend></aside-recommend>
      </el-col>
      <el-col :lg="14" :md="14" :sm="22" :xl="22" :xs="22" :offset="1" class="main">
        <router-view></router-view>
      </el-col>
    </el-row>
  </el-container>
</template>
<script>
import blogHeader from "./components/header.vue";
import asideInfo from "./components/asideInfo.vue";
import asideRecommend from "./components/asideRecommend.vue";

export default {
  components: {
    blogHeader,
    asideInfo,
    asideRecommend
  }
};
</script>
<style lang='less'>
* {
  padding: 0;
  margin: 0;
  font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB",
    "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
}
a{
  text-decoration: none;
  color: inherit;
}
.wrapper,
html,
body {
  height: 100%;
  min-height: 700px;
}
.wrapper {
  background-image: url(/static/container_bg.jpg);
  background-size: cover;
  .header {
    background-color: rgba(0, 0, 0, 0.4);
    box-shadow: 0px 0px 5px 0px #fff inset;
    color: #eee;
    a {
      text-decoration: none;
      color: inherit;
      height: 100%;
      width: 100%;
      display: inline-block;
    }
  }
  .content {
    display: flex;
    margin: 20px 0px;
    .aside {
      height: 100%;
    }
    .main {
      border-radius: 4px;
      height: 600px;
      background-color: rgba(255, 255, 255, 0.7);
      box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
    }
  }
}
</style>



