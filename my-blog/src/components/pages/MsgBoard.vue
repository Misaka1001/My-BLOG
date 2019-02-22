<template>
  <el-card class="box-card">
    <div slot="header" class="title clearfix">
      <span>留言板</span>
    </div>
    <el-row>
      <el-input
        id="msg"
        type="textarea"
        :rows="5"
        placeholder="请输入内容"
        resize="none"
        v-model="textarea"
      ></el-input>
    </el-row>
    <el-row>
      <el-col :span="8">
        <el-input size="mini" placeholder="昵称" v-model="textarea"></el-input>
      </el-col>
      <el-col :span="8">
        <el-input size="mini" placeholder="邮箱" v-model="textarea"></el-input>
      </el-col>
      <el-col :span="8">
        <el-button type="primary" size="small" plain>提交留言</el-button>
      </el-col>
    </el-row>
    <div v-for="o in 4" :key="o" class="text item">{{'列表内容 ' + o }}</div>
  </el-card>
</template>
<script>
export default {
  data() {
    return {
      textarea: ""
    };
  }
};
</script>
<style lang="less" scoped>
.box-card {
  height: 100%;
  .el-row:first-child {
    margin-bottom: 20px;
  }
  .el-row:nth-child(2) {
      .el-col{
          .el-input{
              width: 80%;
          }
      }
  }
  .title {
    text-align: center;
  }
  .text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }
}
</style>
