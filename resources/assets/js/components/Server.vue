<template>
<div>
<navbar></navbar>
<b-container>
<b-row>
<b-col>
<br>
<div v-if="!Object.keys(items).length">
<center>
<h4 style="color:grey">Please wait...</h4>
<div class="loader"></div>
</center>
</div>

<div v-if="Object.keys(items).length>0">
<h5 style="color:grey">Search results for:</h5>
<ins><h3 style="color:rgb(70,70,70)">{{ search_string }}</h3></ins>
</div>
<br>

<!--
<b-row v-for="i in Math.ceil(Object.keys(items).length / 4)" v-bind:key=i>
  <b-col md="3" v-for="item in items.slice((i - 1) * 4, i * 4)" v-bind:key=item.id>
    <b-card-group deck class="mb-3">
    <b-card img-src="./images/map.png"
            img-alt="Image"
            img-top
            class="text-center" text-variant="grey">
            <b><p>{{ item.number }}</p></b>
            <p>{{ item.company_name }}</p>
            {{ item.business_info }}</p>
      </b-card>
     </b-card-group>
  </b-col>
</b-row>
-->
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
        console.log("org_name: "+this.search_string);

        for (var i=0;i<3;i++) {
        get('/getOrgList/'+this.search_string+'/'+i, null).then((res) => {
            console.log(res);
            this.items=res.data;

		}).catch((err) => {
			console.log(err.response.data);
			if(err.response.status === 422) {
			}
  	});
  }
	},
  methods: {
  }
  }
</script>
