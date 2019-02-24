<template>
  <el-container class="wrapper">
    <el-header class="header">
      <blog-header></blog-header>
    </el-header>
    <el-row class="content">
      <el-col :span="6" class="aside hidden-md-and-down">
        <aside-info></aside-info>
        <aside-recommend></aside-recommend>
      </el-col>
      <el-col :lg="18" :span="24" class="main">
        <router-view></router-view>
      </el-col>
    </el-row>
    <!-- <el-footer class="footer"></el-footer> -->
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
li{
  list-style: none;
}
@media screen and (min-width:767px){
  html,body,.wrapper{
    height: 100%;
  }
}
.wrapper {
  min-height: 667px;
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
    margin: 20px 150px;
    @media screen and(max-width : 800px) {
      margin: 20px 5px;
    }
    .aside {
      height: 100%;
      margin-right: 30px;
    }
    .main {
      border-radius: 4px;
      background-color: rgba(255, 255, 255, 0.7);
      box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
    }
  }
}
</style>



