<template>
<b-navbar type="light" variant="faded" toggleable>
  <b-navbar-toggle target="nav_collapse"><b style="color:rgb(80,80,80);position:relative;top:-1px">menu</b></b-navbar-toggle>
  <b-navbar-brand style="cursor:default"><span v-on:click="goWelcome">&nbsp;<b style="color:rgb(100,100,100)">Call1800</b></span></b-navbar-brand>
  <b-collapse is-nav id="nav_collapse">
    <b-navbar-nav class="ml-auto">
 	 <b-navbar-nav>
	      <b-nav-item href="/login"><span style="color:rgb(80,80,80)">Login</span></b-nav-item>
	      <b-nav-item href="/register"><span style="color:rgb(80,80,80)">Register</span></b-nav-item>
	    </b-navbar-nav>
    </b-navbar-nav>
  </b-collapse>
</b-navbar>
</template>

<script type="text/javascript">
import { post, interceptors } from './../helpers/api'

export default {
  data () {
    return 	{
        user: {
        }
			}
	},
  methods: {
    logout() {
      post('/api/logout').then((res) => {
        if(res.data.done) {          
        }
		}).catch((err) => {
			console.log(err.response.data);      
  	});
		},
		goWelcome() {
		window.location="/";
		}
  },
  computed: {
}
}
</script>
