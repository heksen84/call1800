<template>
<div>
<navbar></navbar>
<b-container>

<b-modal ref="myModalRef" hide-footer>
  <div class="d-block text-center">

  <b-form>
  <b-form-group label="Number:">
    <h3 style="color:rgb(80,80,80)">{{ number }}</h3>
  </b-form-group>

  <b-form-group label="Name:">
    <h1 style="color:rgb(120,120,120)">{{ name }}</h1>
  </b-form-group>

  <b-form-group label="Business info:">
    <h4 style="color:rgb(100,100,100)">{{ info }}</h4>
  </b-form-group>

  <b-form-group label="<b>Call</b>">
    <b-img src="./images/phone.png" fluid alt="Responsive image" v-on:click="call($event)" v-b-tooltip.hover title="call"/>
  </b-form-group>

</b-form>
</div>
</b-modal>

<b-row>
<b-col>
<br>

<!-- ошибка -->
<div v-show="notfound">
<center><h3 style="color:rgb(255,100,100);margin-top:-5px;">server error</h3></center>
</div>

<!-- загрузка -->
<div v-show="loader"><center><h4 style="color:rgb(140,140,140);margin-top:40px;">please wait</h4><div class="loader"></div></center></div>

<!-- результат -->
<div v-if="Object.keys(items1).length > 0">
<h5 style="color:grey">Search results for:</h5>
<ins><h3 style="color:rgb(70,70,70)">{{ search_string }}</h3></ins>
</div>
<br>

<b-row v-for="(i,index) in Math.ceil(Object.keys(items4).length / 4)" :key="Math.random() * (100000 - 0) + 0">
  <b-col md="3" v-for="item in items4.slice((i - 1) * 4, i * 4)" :key="item.number" class="col_card">
    <b-card-group deck class="mb-3">
    <b-card
	    img-src="./images/map.png"
            img-alt="Image"
            img-top
            class="text-center" text-variant="grey">
            <p class="number" style="font-weight:bold;font-size:20px;color:rgb(70,70,70)">{{ item.number }}</p>
            <p class="company">{{ item.company_name }}</p>
            <p class="info" style="display:none">{{ item.business_info }}</p>
      <b-img src="./images/phone.png" fluid alt="Responsive image" v-on:click="call($event)" v-b-tooltip.hover title="call"/>
      <br>
      <b-button variant="link" v-on:click="more($event)" style="color:rgb(150,50,50);margin-top:15px">MORE INFO</b-button>
      </b-card>
     </b-card-group>
  </b-col>
</b-row>

<b-row v-for="(i,index) in Math.ceil(Object.keys(items1).length / 4)" :key="Math.random() * (100000 - 0) + 0">
  <b-col md="3" v-for="(item, index) in items1.slice((i - 1) * 4, i * 4)" :key="item.number" class="col_card">
    <b-card-group deck class="mb-3">
    <b-card
	    img-src="./images/map.png"
            img-alt="Image"
            img-top
            class="text-center" text-variant="grey">
            <p class="number">{{ item.number }}</p>
            <p class="company">{{ item.company_name }}</p>
            <p class="info" style="display:none">{{ item.business_info }}</p>
	    <b-img src="./images/phone.png" fluid alt="Responsive image" v-on:click="call($event)"/>
      <br>
      <b-button variant="link" v-on:click="more($event)" style="color:rgb(150,50,50);margin-top:15px">MORE INFO</b-button>
      </b-card>
     </b-card-group>
  </b-col>
</b-row>

<b-row v-for="i in Math.ceil(Object.keys(items2).length / 4)" :key="Math.random() * (100000 - 0) + 0">
  <b-col md="3" v-for="(item, index) in items2.slice((i - 1) * 4, i * 4)" :key="item.number" class="col_card">
    <b-card-group deck class="mb-3">
    <b-card
	    img-src="./images/map.png"
            img-alt="Image"
            img-top
            class="text-center" text-variant="grey">
            <p class="number">{{ item.number }}</p>
            <p class="company">{{ item.company_name }}</p>
            <p class="info" style="display:none">{{ item.business_info }}</p>
	    <b-img src="./images/phone.png" fluid alt="Responsive image" v-on:click="call($event)"/>
      <br>
      <b-button variant="link" v-on:click="more($event)" style="color:rgb(150,50,50);margin-top:15px">MORE INFO</b-button>
      </b-card>
     </b-card-group>
  </b-col>
</b-row>

<b-row v-for="i in Math.ceil(Object.keys(items3).length / 4)" :key="Math.random() * (100000 - 0) + 0">
  <b-col md="3" v-for="(item, index) in items3.slice((i - 1) * 4, i * 4)" :key="item.number" class="col_card">
    <b-card-group deck class="mb-3">
    <b-card
	    img-src="./images/map.png"
            img-alt="Image"
            img-top
            class="text-center" text-variant="grey">
            <p class="number">{{ item.number }}</p>
            <p class="company">{{ item.company_name }}</p>
            <p class="info" style="display:none">{{ item.business_info }}</p>
            <b-img src="./images/phone.png" fluid alt="Responsive image" v-on:click="call($event)"/>
            <br>
            <b-button variant="link" v-on:click="more($event)" style="color:rgb(150,50,50);margin-top:15px">MORE INFO</b-button>
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
        number: "",
        name:  "",
        info: "",
        item_index: 0,
	       row_index: 0,
         loader: true,
	        notfound: false,
	         server_error:0,
           items1: {},
           items2: {},
           items3: {},
           items4: {}
         }
    },
       created() {

       this.items1 = {}
       this.items2 = {}
       this.items3 = {}
       this.items4 = {}

        console.log("org_name: "+this.search_string);

        // from database
        get('/getOrgList/'+this.search_string+'/3', null).then((res) => {
            console.log("---- database ------");
            console.log(res);
            console.log("---- database ------");
            this.items4=res.data;

	    if (Object.keys(res.data).length > 0) this.loader=false;

	    }).catch((err) => {
		               this.loader = false;
			       console.log(err.response);
			       console.log(err.response.data);
  	   });

        // 1 запрос
        get('/getOrgList/'+this.search_string+'/0', null).then((res) => {
            console.log(res);
            this.items1=res.data;

       	    if (Object.keys(res.data).length > 0) this.loader=false;

	    }).catch((err) => {
		               this.loader = false;
 			       this.server_error++; if (this.server_error==3) this.notfound = true;
			       console.log(err.response);
			       console.log(err.response.data);
  	    });

        // 2 запрос
        get('/getOrgList/'+this.search_string+'/1', null).then((res) => {
            console.log(res);
            this.items2=res.data;

	    if (Object.keys(res.data).length > 0) this.loader=false;

	    }).catch((err) => {
 		          this.loader = false;
			  this.server_error++; if (this.server_error==3) this.notfound = true;
			  console.log(err.response.data);
  	    });

        // 3 запрос
        get('/getOrgList/'+this.search_string+'/2', null).then((res) => {
            console.log(res);
            this.items3=res.data;

	    if (Object.keys(res.data).length > 0) this.loader=false;

	    }).catch((err) => {
			  this.server_error++; if (this.server_error==3) this.notfound = true;
			  console.log(err.response.data);
      });
	},
  methods: {
    getItemIndex() {
      console.log("INDEX");
      this.item_index++;
      return this.item_index;
    },
    call(e) {
      alert("in progress...");
    },
    more(e) {
      this.number =  e.target.parentNode.childNodes[0].innerText;
      this.name   =  e.target.parentNode.childNodes[1].nextSibling.innerText;
      this.info   =  e.target.parentNode.childNodes[3].nextSibling.innerText;
      this.$refs.myModalRef.show();
    }
}
}
</script>
