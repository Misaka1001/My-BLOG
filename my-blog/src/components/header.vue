<template>
  <el-row>
    <el-col :lg="4" :md="4" :sm="5" :xs="5" class="logo"></el-col>
    <el-col :lg="3" :md="3" :sm="3" :xs="3" :offset="5" class="tag hidden-sm-and-down">
      <router-link to="home">Home</router-link>
    </el-col>
    <el-col :span="3" class="tag hidden-sm-and-down">
      <router-link to="article">Article</router-link>
    </el-col>
    <el-col :span="3" class="tag hidden-sm-and-down">
      <router-link to="myinfo">MyInfo</router-link>
    </el-col>
    <el-col :span="3" class="tag hidden-sm-and-down">
      <router-link to="msgboard">Msg-Board</router-link>
    </el-col>
    <el-col :sm="4" :xs="4" :offset="5" class="hidden-md-and-up el-icon-menu icon"></el-col>
    <el-col :span="1" :offset="0" class="hidden-sm-and-down icon git">
      <el-tooltip
        class="item"
        effect="dark"
        :content="`github : ${info && info.github}`"
        placement="bottom-end"
      >
        <svg
          height="32"
          class="octicon octicon-mark-github"
          viewBox="0 0 16 16"
          version="1.1"
          width="32"
          aria-hidden="true"
          @click="github"
        >
          <path
            fill-rule="evenodd"
            fill="#fff"
            d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"
          ></path>
        </svg>
      </el-tooltip>
    </el-col>
    <el-col :span="1" class="el-icon-bell icon hidden-sm-and-down" title="message"></el-col>
    <el-col :span="1" class="el-icon-setting icon hidden-sm-and-down" title="setting"></el-col>
    <el-col :span="1" :offset="8" class="el-icon-more icon hidden-md-and-up"></el-col>
  </el-row>
</template>
<script>
import { mapState } from "vuex";
export default {
  data() {
    return {};
  },
  methods: {
    github() {
      window.open(this.info.github);
    }
  },
  computed: {
    ...mapState(["info"])
  }
};
</script>

<style lang='less'>
.el-row {
  height: 100%;
  .logo {
    height: 100%;
    background-image: url(/static/logo.png);
    background-size: auto 100%;
    background-repeat: no-repeat;
    background-position: center;
  }
  .tag {
    line-height: 60px;
    text-align: center;
    cursor: pointer;
    &:hover {
      background-color: rgba(0, 0, 0, 0.5);
    }
  }
  .icon {
    text-align: center;
    font-size: 30px;
    height: 100%;
    line-height: 60px;
    cursor: pointer;
    &.git {
      display: flex;
      justify-content: center;
      align-items: center;
      svg{
        outline: none;
      }
    }
  }
}
</style>
