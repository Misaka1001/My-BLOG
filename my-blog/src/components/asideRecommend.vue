<template>
  <el-card class="box-card">
    <div slot="header" class="clearfix">
      <span>博主推荐</span>
    </div>
    <div v-for="o in 4" :key="o" class="text item">{{'列表内容 ' + o }}</div>
  </el-card>
</template>
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
