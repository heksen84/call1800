<template>
<div>
<!-- контент -->
<b-container style="max-width: 350px;">
<b-row>
  <b-col>
  <br>
  <h1 id="title">Call1800</h1>
  <br>
  <form v-on:submit.prevent="search_numbers">
  <b-form-group id="searchGroup"
                    label="What"
                    label-for="emailInput">
        <b-form-input id="emailInput"
                    type="text"
                    v-model="form.search"
                    required
                    placeholder="What are you looking for?">
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
  //import navbar from './navbar.vue'
  export default {
    //components: { navbar },
    data () {
      return {
        form: {
					search: ""
				}
      }
    },
    methods: {
      search_numbers() {
          alert("123");
      }
    }
  }
</script>
