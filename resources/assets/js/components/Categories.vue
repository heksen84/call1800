<template>
<div>
<navbar></navbar>
<b-container>
<b-row>
<b-col>
<br>
<h2 style="color:rgb(90,90,90)"><ins>{{ item }}</ins></h2>
<br>
<b-table striped hover :items="items"></b-table>
</b-col>
</b-row>
</center>
</b-container>
</div>
</template>
<script>
  import navbar from './navbar.vue'
  import { post, get, interceptors } from './../helpers/api'
  export default {
    props: ['item'],
    components: { navbar },
    data () {
      return {
        items: {}
      }
    },
	created() {
	   this.items = {}
        get('/getOrgList', { org_name: this.search_string }).then((res) => {
            console.log(res);
            this.items=res.data;

		}).catch((err) => {
			console.log(err.response.data);
			if(err.response.status === 422) {
			}
  	});
	},
  methods: {
  }
  }
</script>
