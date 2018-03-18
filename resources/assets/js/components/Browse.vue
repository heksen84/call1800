<template>
<div>
<navbar></navbar>
<b-container>
<b-row>
<b-col>
<br>

<!-- загрузка -->
<div v-if="!Object.keys(items1).length">
<center>
<!--<h4 style="color:rgb(50,50,50)">{{ search_string }} search</h4>-->
<h4 style="color:rgb(140,140,140);margin-top:-5px;">please wait</h4>
<div class="loader"></div>
</center>
</div>

<!-- результат -->
<div v-if="Object.keys(items1).length > 0">
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

    var client = new Opentact({
      sipProxy: "158.69.112.28",
      sipWsUrl: "wss://158.69.112.28:8443",
      sipDebug: true,
      xmppWsUrl: "wss://xmpp.opentact.org:5280/websocket",
      xmppHost: "xmpp.opentact.org",
      xmppDebug: true,
      xmppAutoReconnect: true
    });

    client.on( "connection", function(conn) {
      console.log( "sip registered", conn.sip );
      console.log( "xmpp connected", conn.xmpp );
    });

    /*client.login({
      identity: "<<your identity uuid>>",
      token: "<<your session token>>"
    });*/

    /*client.on( "call:starting", function(session) {
      console.log( "session id: ", session.id );
      console.log( "call with:  ", session.remoteUser );
      console.log( "has audio:  ", session.audio );
      console.log( "has video:  ", session.video );
      // update your UI here
    });*/

	     this.items1 = {}
       this.items2 = {}
       this.items3 = {}

        console.log("org_name: "+this.search_string);

        // 1 запрос
        get('/getOrgList/'+this.search_string+'/0', null).then((res) => {
            console.log(res);
            this.items1=res.data;
		    }).catch((err) => {
			  console.log(err.response.data);
			  if(err.response.status === 422) {
			  }
  	    });

        // 2 запрос
        get('/getOrgList/'+this.search_string+'/1', null).then((res) => {
            console.log(res);
            this.items2=res.data;
		    }).catch((err) => {
			  console.log(err.response.data);
			  if(err.response.status === 422) {
			  }
  	    });

        // 3 запрос
        get('/getOrgList/'+this.search_string+'/2', null).then((res) => {
            console.log(res);
            this.items3=res.data;
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
