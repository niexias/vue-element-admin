<template>
  <div class="content__header">
    <div class="header__navbar">
      <ul class="navbar__menu">
        <li class="menu__item"><i class="icon-home pr-10"></i>首页</li>
        <li class="menu__item"><i class="icon-email pr-10"></i>反馈</li>
        <li class="menu__item"><i class="icon-question-mark-circle pr-10"></i>帮助</li>
    </ul>
    </div>
    <el-dropdown class="header__user">
      <div class="user__profile">
        <img class="icon" src="./../../assets/imgs/icon__logo.jpg">
        <p>niexias</p>
      </div>
      <el-dropdown-menu slot="dropdown">
        <el-dropdown-item>
          <p><i class="icon-person"></i>个人中心</p>
        </el-dropdown-item>
        <el-dropdown-item>
          <p @click="handleLogout"><i class="icon-log-out"></i>退出登录</p>
        </el-dropdown-item>
      </el-dropdown-menu>
    </el-dropdown>
  </div>
</template>
<script>
export default {
  data () {
    return {
      
    }
  },
  methods: {
    /**
     * 退出登录，路由跳转到登录页
     */
    handleLogout() {
      this.$router.push("/login");
    }
  },
}
</script>
<style lang="scss">
.content__header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  box-sizing: border-box;
  padding: 5px 20px;
  box-shadow: 0 1px 4px 0 rgba(0,21,41,.08);
  .header__navbar {
    flex: 1;
    color: #666;
    font-size: 12px;
    .navbar__menu {
      display: flex;
      justify-content: flex-end;
      align-items: center;
    }
    .navbar__menu .menu__item{
      width: 90px;
      text-align: center;
    }
  }
  .header__user {
    display: flex;
    align-items: center;
    margin-left: 20px;
    .user__profile {
      display: flex;
      align-items: center;
      margin-bottom: 2px;
      text-align: center;
      color: #333;
    }
    .user__profile .icon {
      display: inline-block;
      border-radius: 50%;
      height: 40px;
      width: 40px;
      margin-right: 10px;
    }
  }
}
</style>
