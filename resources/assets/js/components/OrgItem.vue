<template>
<div>
<navbar></navbar>
<b-container>
<b-row>
<b-col>
<h2>{{ search_string }}</h2>
<div v-for="item in items" :key=item.id>{{ item.website}}</div>

<b-card-group deck class="mb-3">
<b-card  header="<b>header</b>" class="text-center"
    img-src="image"
    img-alt="Image"
    img-top>
     <p class="card-text">supertext</p>
  </b-card>
 </b-card-group>

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
    props: ['search_string'],
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
