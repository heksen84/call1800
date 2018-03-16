<template>
<div>
<navbar></navbar>
  <!-- контент -->
<b-container style="max-width: 370px;">
<b-row>
  <b-col>
  <center>
  <h1 id="title">Call1800</h1>
  <h5 style="color:grey;margin-top:-30px">Get a toll free number</h5>
  </center>
  <br>
  <form v-on:submit.prevent="search_numbers" style="margin-top:-15px">
  <b-form-group id="searchGroup"
                    label="Search"
                    label-for="emailInput">
        <b-form-input id="emailInput"
                    type="text"
                    v-model="form.search"
                    placeholder="Enter a Company Name"
                    required>
        </b-form-input>
  </b-form-group>
  <b-form-group class="text-center">
    <b-button variant="danger" type="submit">Search</b-button>
  </b-form-group>
</form>
</b-col>
</b-row>
</b-container>
<b-container>
<center>
<br>
<h4 style="color:rgb(90,90,90);margin-bottom:20px;"><ins>categories</ins></h4>
<b-row v-for="i in Math.ceil(Object.keys(categories).length / 4)" v-bind:key=i>
  <b-col md="3" v-for="item in categories.slice((i - 1) * 4, i * 4)" v-bind:key=item.name>
    <div class="items" v-on:click="redirect">{{ item.name }}</div>
  </b-col>
</b-row>
<br>
<h4 style="color:rgb(90,90,90);margin-bottom:20px;"><ins>searches</ins></h4>
</center>
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
        get('/categories', null).then((res) => {
            this.categories=res.data;

		}).catch((err) => {
			console.log(err.response.data);
			if(err.response.status === 422) {
			}
  	});
	},
    methods: {
      redirect: function(event) {
        console.log(event.target.textContent);
          window.location="categories/"+event.target.textContent.toLowerCase();;

      },
      search_numbers() {
          window.location="/search/?company="+this.form.search;
      }
    }
  }
</script>
