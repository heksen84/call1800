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
  </b-col>
</b-row>
</b-container>
</div>
</template>
<script>
  import navbar from './navbar.vue'
  export default {
    components: { navbar },
    data () {
      return {
        form: {
					search: ""
				}
      }
    },
    methods: {
      search_numbers() {
	if (this.form.search=="") this.form.search="all";
	window.location = "/search/"+this.form.search;
      }
    }
  }
</script>
