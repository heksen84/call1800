<template>
<div>
<navbar></navbar>
<b-container>
<b-row>
<b-col>
<br>

<!-- ошибка -->
<div v-show="error">
<center><h4 style="color:rgb(255,100,100);margin-top:-5px;">{{ error }}</h4></center>
</div>

<!-- загрузка -->
<div v-show="loader">
<center><h4 style="color:rgb(140,140,140);margin-top:-5px;">please wait</h4><div class="loader"></div></center>
</div>

<!-- результат -->
<div v-if="Object.keys(items1).length > 0">
<h5 style="color:grey">Search results for:</h5>
<ins><h3 style="color:rgb(70,70,70)">{{ search_string }}</h3></ins>
</div>
<br>

<b-row v-for="i in Math.ceil(Object.keys(items1).length / 4)" v-bind:key=i>
  <b-col md="3" v-for="item in items1.slice((i - 1) * 4, i * 4)" v-bind:key=item.id>
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


<b-row v-for="i in Math.ceil(Object.keys(items2).length / 4)" v-bind:key=i>
  <b-col md="3" v-for="item in items2.slice((i - 1) * 4, i * 4)" v-bind:key=item.id>
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


<b-row v-for="i in Math.ceil(Object.keys(items3).length / 4)" v-bind:key=i>
  <b-col md="3" v-for="item in items3.slice((i - 1) * 4, i * 4)" v-bind:key=item.id>
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
        loader: true,
	error:  "",
        items1: {},
        items2: {},
        items3: {}
      }
    },
	created() {
       this.items1 = {}
       this.items2 = {}
       this.items3 = {}

        console.log("org_name: "+this.search_string);

        // 1 запрос
        get('/getOrgList/'+this.search_string+'/0', null).then((res) => {
            console.log(res);
            this.items1=res.data;
            this.loader=false;
		    }).catch((err) => {
		               this.loader = false;
			       this.error = err.response.statusText;
			       console.log(err.response);
			       console.log(err.response.data);
  	    });

        // 2 запрос
        get('/getOrgList/'+this.search_string+'/1', null).then((res) => {
            console.log(res);
            this.items2=res.data;
            this.loader=false;
		    }).catch((err) => {
 		          this.loader = false;
			  this.error = err.response.statusText;
			  console.log(err.response.data);
  	    });

        // 3 запрос
        get('/getOrgList/'+this.search_string+'/2', null).then((res) => {
            console.log(res);
            this.items3=res.data;
            this.loader=false;
		    }).catch((err) => {
	                  this.loader = false;
			  this.error = err.response.statusText;
			  console.log(err.response.data);
      });

	},
  methods: {
  }
  }
</script>
