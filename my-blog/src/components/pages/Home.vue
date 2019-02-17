<template>
  <div class="home-wrapper">
    <el-row class="top-article">
      <el-col :span="20" :offset="2">
        <el-carousel :interval="4000" type="card" height="200px">
          <el-carousel-item v-for="item in 6" :key="item">
            <h3>{{ item }}</h3>
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
          <div v-for="o in 4" :key="o" class="text item">{{'列表内容 ' + o }}</div>
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

<style scoped lang='less'>
.home-wrapper {
  margin-top: 20px 0px;
  .el-row {
    margin: 20px;
    .box-card {
      height: 350px;
    }
  }
}
</style>