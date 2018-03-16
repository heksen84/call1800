
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

import Vue from 'vue'
import BootstrapVue from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import welcome from './components/welcome.vue'
import browse from './components/browse.vue'
import { opentact } from 'opentact'

Vue.use(BootstrapVue);

const app = new Vue({
    el: '#app',
    components: { welcome, browse },
    methods: {
      hello() {
	       alert("call");
       }
    }
});
