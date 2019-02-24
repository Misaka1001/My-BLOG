<template>
  <el-card class="box-card">
    <header>
      <h1>About Me</h1>
    </header>
    <section>
      <el-card>
        <el-row v-for="(value, key) in myInfo" :key="key">
          <el-col :span="2" :xs="5" :offset="1">{{key}}</el-col>
          <el-col :span="16" :offset="1">{{value}}</el-col>
        </el-row>
      </el-card>
    </section>
  </el-card>
</template>
<script>
import { mapState } from "vuex";
export default {
  created(){
    this.initInfo();
  },
  data(){
    return {
      myInfo : null
    }
  },
  methods:{
    initInfo(){
      const info = JSON.parse(sessionStorage.getItem('info'));
      this.myInfo = {
        姓名 : info.name,
        手机 : info.tel,
        邮箱 : info.email,
        GitHub : info.github,
        座右铭 : info.motto
      }
    }
  }
};
</script>
<style lang="less" scoped>
.box-card {
  font-size: 14px;
  height: 100%;
  display: flex;
  flex-direction: column;
  header {
    text-align: center;
    line-height: 60px;
    margin: 15px 0px;
    h1 {
      font-size: 40px;
      color: #424242;
    }
  }
  section{
    .el-row{
      margin: 10px 0px;
    }
  }
}
</style>
