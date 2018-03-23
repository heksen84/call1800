<template>
<div>
<navbar></navbar>
<!-- контент -->
<b-container>
<b-row>
<b-col>
<center><h3>Hello, {{ username }}!</h3></center>
<br>
<br>
<!--<b-nav fill tabs>
  <b-nav-item active>New company</b-nav-item>
  <b-nav-item>My companies</b-nav-item>
</b-nav>-->
<br>
<center>

 <form v-on:submit.prevent="save" style="margin-top:-15px;width:400px" method="POST">
  <b-form-group
		    label="Number"
                    label-for="numberInput">
        <b-form-input id="numberInput"
                    type="text"
                    v-model="form.number"
                    placeholder="Enter a phone number"
                    required>
        </b-form-input>
  </b-form-group>
<b-form-group
		    label="Name"
                    label-for="nameInput">
        <b-form-input id="nameInput"
                    type="text"
                    v-model="form.name"
                    placeholder="Enter a company name"
                    required>
        </b-form-input>
</b-form-group>

<b-form-group
		    label="Website"
                    label-for="websiteInput">
        <b-form-input id="websiteInput"
                    type="text"
                    v-model="form.website"
                    placeholder="Enter a company website">
        </b-form-input>
</b-form-group>

<b-form-group label="Company description"
                    label-for="orginfoInput">
   <b-form-textarea id="textarea1"
                     v-model="form.org_info"
                     placeholder="Enter company description"
                     :rows="6"
                     :max-rows="6" required>
    </b-form-textarea>
</b-form-group

<b-form-group>
<b-form-select v-model="selected1" class="mb-3" required>
      <option :value="null">Please select category</option>
      <option v-for="item in categories" v-bind:key=item.id v-on:click="saveCategoryId(item.id)"> {{ item.name }} </option>
</b-form-select>
</b-form-group

<b-form-group>
<b-form-select required v-model="selected2" class="mb-3" :options="countries"></b-form-select>
</b-form-group

  <b-form-group class="text-center">
    <b-button variant="danger" type="submit">Save</b-button>
  </b-form-group>
</form>

</center>
</b-col>
</b-row>
</b-container>
<b-container>
<center>
<br>
<br>
</center>
</b-container>
</div>
</template>
<script>

import navbar from './navbar.vue'
import { post, get, interceptors } from './../helpers/api'

export default {
    props: ['username'],
    components: { navbar },
    data () {
      return {
      selected1: null,
      selected2: null,
      categories: {},
	form: {
		number:   "",
		name: 	  "",
		website:  "",
		org_info: "",
		category_id: null,
		country_id:  null
	 },
	countries: [
        	 { value: null, text: 'Please select a country' },
	         { value: 0, text: 'USA' },	
	         { value: 1, text: 'Canada' }
	        ]
      	}
    },
    created() {
	this.categories = {}	
        get('/categories', null).then((res) => {
            this.categories=res.data;
		console.log(res.data);
		}).catch((err) => {
			console.log(err.response.data);
			if(err.response.status === 422) {
			}
  	});
    },
    methods: {
	saveCategoryId: function (id) {
      	this.form.category_id = id;
      },
	saveCountryId: function (id) {
      	this.form.country_id = id;
      },
      save() {
	get('addCompany/'+this.form.number+"/"+this.form.name+"/"+this.form.website+"/"+this.form.org_info+"/"+this.form.category_id+"/"+this.selected2).then((res) => {        
            console.log(res);
            alert("record added");
	    this.form={};
	}).catch((err) => {		              
	      console.log(err.response);
              console.log(err.response.data);
        });
      }
    }

}
</script>
