<template>
  <el-card class="box-card">
    <div slot="header" class="clearfix">
      <span>文章列表</span>
      <el-button style="float: right; padding: 3px 0" type="text">分类/排序</el-button>
    </div>
    <div v-for="(item,index) in articleMeta" :key="index" class="text item">
      <img :src="articleMeta && item.cover" alt>
      <section>
        <h1>标题 ：{{articleMeta && item.title}}</h1>
        <h3>摘要 ：{{articleMeta && item.title}}</h3>
        <h3>发表时间 ：{{articleMeta && new Date(item.date).toLocaleString()}}</h3>
      </section>
      <el-button type="primary">查看详情</el-button>
    </div>
  </el-card>
</template>

<script>
import { mapState } from "vuex";
export default {
  computed: {
    ...mapState(["articleMeta"])
  }
};
</script>

<style scoped lang="less">
.box-card {
  width: 100%;
  height: 100%;
  overflow-y: auto;
  &::-webkit-scrollbar {
    width: 10px;
  }
  &::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.2) inset;
    background: rgba(0, 0, 0, 0.2);
  }
  &::-webkit-scrollbar-track {
    -webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.2) inset;
    border-radius: 0;
    background: rgba(0, 0, 0, 0.1);
  }
  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
    clear: both;
  }
  .text {
    font-size: 14px;
  }
  .item {
    margin-bottom: 18px;
    height: 150px;
    display: flex;
    justify-content: center;
    align-items: center;
    img {
      height: 100%;
    }
    section {
      height: 100%;
      display: inline-block;
      flex-grow: 1;
      padding: 20px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      box-sizing: border-box;
    }
  }
}
</style>