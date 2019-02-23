<template>
  <el-card class="box-card">
    <div slot="header" class="clearfix el-row">
      <el-col :span="6">文章列表</el-col>
      <el-col :span="12">
        <el-input v-model="input" placeholder="请输入内容"></el-input>
      </el-col>
      <el-col :span="6">
        <el-button style="float: right; padding: 3px 0" type="text">分类/排序</el-button>
      </el-col>
    </div>
    <div v-for="(item,index) in articleMeta" :key="index" class="text item el-row">
      <el-row class="articleMeta">
        <el-col :span="6" :xs="24">
          <img style="width:100%" :src="articleMeta && item.cover" alt>
        </el-col>
        <el-col :span="17" :xs="24" :offset="1">
          <el-tag>{{articleMeta && item.class}}</el-tag>
          <span>{{articleMeta && item.title}}</span>
          <p>摘要 ：{{articleMeta && item.summary}}</p>
        </el-col>
      </el-row>
      <el-row class="bottom">
        <el-col
          class="el-icon-date"
          :span="8"
        >{{articleMeta && new Date(item.date).toLocaleDateString() }}</el-col>
        <el-col class="el-icon-view" :span="8">144浏览</el-col>
        <el-col class="el-icon-document" :span="8">
          <router-link :to="{name : 'articleDetails',params:{ index : index, id : item.id }}">查看全文</router-link>
        </el-col>
      </el-row>
    </div>
  </el-card>
</template>

<script>
import { mapState } from "vuex";
export default {
  data() {
    return {
      input: ""
    };
  },
  computed: {
    ...mapState(["articleMeta", "article"])
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
  .clearfix {
    display: flex;
    justify-content: center;
    align-items: center;
    &::before,
    &::after {
      display: table;
      content: "";
      clear: both;
    }
  }
  .text {
    font-size: 14px;
  }
  .item {
    margin-bottom: 18px;
    box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
    .articleMeta {
      padding: 5px;
      img {
        height: 100%;
      }
    }
    .bottom {
      padding: 10px;
      color: #409eff;
      .el-col:nth-child(2) {
        text-align: center;
      }
      .el-col:nth-child(3) {
        text-align: right;
      }
    }
  }
}
</style>