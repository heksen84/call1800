<template>
<div>
<navbar></navbar>
  <!-- контент -->
<b-container style="max-width: 370px;">
<b-row>
  <b-col>
  <br>
  <center>
  <h1 id="title">Call1800</h1>
  <h5 style="color:grey;margin-top:-30px">Get a toll free number</h5>
  </center>
  <br>
  <form v-on:submit.prevent="search_numbers">
  <b-form-group id="searchGroup"
                    label="Search"
                    label-for="emailInput">
        <b-form-input id="emailInput"
                    type="text"
                    v-model="form.search"
                    placeholder="Enter a Company Name">
        </b-form-input>
  </b-form-group>
  <b-form-group class="text-center">
    <b-button variant="danger" type="submit">Search</b-button>
  </b-form-group>
</form>
<center>
<br>
<h6 v-for="item in categories" class="items">{{ item.name }}</h6>
</center>
  </b-col>
</b-row>
</b-container>
</div>
</template>
<script>
  import navbar from './navbar.vue'
  import { post, get, interceptors } from './../helpers/api'
  export default {
    components: { navbar },
    data () {
      return {
        categories: {},
        form: {
					search: ""
				}
      }
    },
	created() {
				this.categories = {}
        get('/categories',null).then((res) => {

            console.log(res);
            console.log(res.data);
            this.categories=res.data;
            //this.categories.name=obj.name;

		}).catch((err) => {
			console.log(err.response.data);
			if(err.response.status === 422) {
	   //      this.error = err.response.data
			}
  	});



	},
    methods: {
      search_numbers() {
	       if (this.form.search=="") this.form.search="all";
	        window.location="/search/"+this.form.search;
      }
    }
  }
</script>
