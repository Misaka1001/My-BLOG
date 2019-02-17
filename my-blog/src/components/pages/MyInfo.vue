<template>
  <div class="myinfo-wrapper">
    <header>
      <h1>ABOUT ME</h1>
    </header>
    <section>
      <el-row>
        <el-col :span="8">
          <span class="el-icon-tickets"></span>
          <div>前端开发</div>
        </el-col>
        <el-col :span="8">
          <span class="el-icon-message"></span>
          <div>{{info && info.email}}</div>
        </el-col>
        <el-col :span="8">
          <span class="el-icon-mobile-phone"></span>
          <div>{{info && info.tel}}</div>
        </el-col>
      </el-row>
    </section>
    <footer>
        <h1>MY SKILL</h1>
    </footer>
  </div>

</template>
<script>
import { mapState } from "vuex";
export default {
  computed: {
    ...mapState(["info"])
  }
};
</script>

<style lang="less" scoped>

.myinfo-wrapper {
    height: 100%;
  display: flex;
  flex-direction: column;
  header {
    text-align: center;
    line-height: 60px;
    margin: 30px 0px;
    h1 {
      font-size: 40px;
      color: #424242;
    }
  }
  section {
    height: 150px;
    background-color: rgba(0, 0, 0, 0.1);
    .el-row {
      display: flex;
      justify-content: center;
      .el-col {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        span {
          font-size: 30px;
        }
        div {
          margin-top: 20px;
        }
      }
    }
  }
  footer {
    background-color: rgb(27, 188, 155);
    flex-grow: 1;
    display: flex;
    justify-content: center;
    h1{
        color: #fff;
        margin: 20px 0px;
    }
  }
}
</style>
