<template>
<b-navbar type="dark" variant="danger" toggleable>
  <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>
  <b-navbar-brand style="cursor:default"><span class="carefree-font" v-on:click="goHome">&nbsp;love in travels</span></b-navbar-brand>
  <b-collapse is-nav id="nav_collapse">
    <b-navbar-nav class="ml-auto">
      <b-row class="text-center">
    	<b-col cols="12" md="auto" v-if="isAuth">
    	    <b-button size="sm" class="my-1 mr-sm-1" href="/login">Вход</b-button>
    	    <b-button size="sm" class="my-1 mr-sm-1" variant="success" href="/register">Регистрация</b-button>
    	</b-col>
    	</b-row>
    </b-navbar-nav>
  </b-collapse>
</b-navbar>
</template>

<script type="text/javascript">
import store from './../store'
import { post, interceptors } from './../helpers/api'

export default {
  components: { store },
  data () {
    return 	{
        user: {
          name: store.state.user.name
        }
			}
	},
  methods: {
    logout() {
      post('/api/logout').then((res) => {
        if(res.data.done) {
          store.commit('setAuth', false);
          store.commit('setUserName', "");
        }
		}).catch((err) => {
			console.log(err.response.data);
      store.commit('setAuth', false);
  	});
		},
		goHome() {
      this.logout();
		}
  },
  computed: {
    isAuth()  {
      /*
      --------------------------------------------------------------------
       кнопки авторизации в панели отображаются только через v-if = true,
       поэтому переворачиваем значение auth
       --------------------------------------------------------------------
       */
      return !store.state.user.auth;
    }
}
}
</script>
