<template>
  <el-card class="box-card">
    <div slot="header" class="clearfix">
      <span>博主推荐</span>
    </div>
    <div v-for="(item, index) in recommend" :key="index" class="text item">{{ item.title }}</div>
  </el-card>
</template>
<script>
export default {
  created() {
    this.getRecommend();
  },
  data() {
    return {
      recommend: ""
    };
  },
  methods: {
    getRecommend() {
      this.$http.get("/api/getRecommend").then(res => {
        this.$data.recommend = res.data;
      });
    }
  }
};
</script>

<style scoped lang="less">
.text {
  font-size: 14px;
}
.item {
  margin-bottom: 18px;
}
.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
}
.clearfix:after {
  clear: both;
}
</style>
