<template>
  <el-card class="box-card">
    <el-row>
      <el-col :span="8" :offset="2">
        <img :src="article && article.cover" alt>
      </el-col>
      <el-col :span="8" :offset="2">
        <p>
          <el-tag size="small">标题</el-tag>
          {{article.title}}
        </p>
        <p>
          <el-tag size="small">浏览次数</el-tag>
          {{article.count}}
        </p>
        <p>
          <el-tag size="small">分类</el-tag>
          {{article.class}}
        </p>
        <p>
          <el-tag size="small">日期</el-tag>
          {{article.date}}
        </p>
      </el-col>
    </el-row>
    <el-row v-html="articleDetails"></el-row>
  </el-card>
</template>
<script>
import { mapState } from "vuex";
export default {
  data() {
    return {
      article: "",
      articleDetails: ""
    };
  },
  created() {
    this.init();
  },
  methods: {
    init() {
      const id = this.$route.params.id;
      const index = this.$route.params.index;
      this.article = this.$store.state.articleMeta[index];
      this.$http.get("/api/getArticle", { params: { id: id } }).then(res => {
        this.articleDetails = res.data[0].article;
      });
    }
  },
  computed: {
    ...mapState(["articleMeta"])
  },
  watch: {
    $route(to, from) {
      this.init();
    }
  }
};
</script>

<style lang="less" scoped>
.el-card {
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
  height: 100%;
  .el-row {
    .el-col {
      img {
        height: 100%;
        width: 100%;
      }
      p {
        margin-bottom: 10px;
        .el-tag {
          margin-right: 10px;
          width: 60px;
          text-align: center;
        }
      }
    }
  }
}
</style>
