<template>
<div>
<navbar></navbar>
<b-container>
<b-row>
<b-col>
<br>
<h3 style="color:grey">Search results for</h3>
<h3>{{ search_string }}</h3>
<br>
<b-row v-for="i in Math.ceil(Object.keys(items).length / 4)" v-bind:key=i>
  <b-col md="3" v-for="item in items.slice((i - 1) * 4, i * 4)" v-bind:key=item.id>
    <b-card-group deck class="mb-3">
    <b-card img-src="./images/map.png"
            img-alt="Image"
            img-top
            header="888-888-222" class="text-center" text-variant="grey">
         <p>{{ item.website }}</p>
      </b-card>
     </b-card-group>
  </b-col>
</b-row>

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
