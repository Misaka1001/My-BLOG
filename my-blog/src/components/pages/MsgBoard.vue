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
        v-model="message.msg"
      ></el-input>
    </el-row>
    <el-row>
      <el-col :span="8">
        <el-input size="mini" placeholder="昵称" v-model="message.user"></el-input>
      </el-col>
      <el-col :span="8">
        <el-input size="mini" placeholder="邮箱" v-model="message.email"></el-input>
      </el-col>
      <el-col :span="8">
        <el-button type="primary" size="small" plain @click="postMsg">提交留言</el-button>
      </el-col>
    </el-row>
    <el-card v-for="(item,index) in data" :key="index" class="box-card" shadow="never">
      <el-tag class="floor" size="mini" type="success">{{item.id}}楼</el-tag>
      <span class="name">{{item.user}}</span>
      <span class="date">{{item.date}}</span>
      <p>{{item.msg}}</p>
    </el-card>
  </el-card>
</template>
<script>
export default {
  created() {
    this.getMsg();
  },
  data() {
    return {
      message: {
        user: "",
        email: "",
        msg: "",
        date: ""
      },
      data: ""
    };
  },
  methods: {
    postMsg() {
      const time = new Date();
      this.$data.message.date = `${time.getFullYear()}年${time.getMonth()}月${time.getDate()}日${time.getHours()}:${time.getMinutes()}`;
      this.$http.post("/api/leaveMessage", this.$data.message).then(res => {
        this.getMsg();
      });
    },
    getMsg() {
      this.$http.get("/api/getMsgBoard").then(res => {
        this.$data.data = res.data;
      });
    }
  }
};
</script>
<style lang="less" scoped>
.box-card {
  overflow-y: auto;
  height: 100%;
  &::-webkit-scrollbar {
    width: 6px;
    height: 14px;
  }
  &::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
    background-color: #fff;
  }

  &::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
    background-color: #909399;
  }
  .el-row:first-child {
    margin-bottom: 20px;
  }
  .el-row:nth-child(2) {
    .el-col {
      .el-input {
        width: 80%;
      }
    }
  }
  .title {
    text-align: center;
  }
  .el-card {
    font-size: 14px;
    margin: 10px;
    .floor {
      width: 40px;
      text-align: center;
    }
    .name {
      display: inline-block;
      width: 80px;
    }
    .date {
      color: #909399;
      font-size: 12px;
    }
    p {
      margin-top: 10px;
    }
  }
}
</style>
