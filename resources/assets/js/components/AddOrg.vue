<template>
<div>
<navbar :auth="auth"></navbar>
<!-- контент -->
<b-container style="max-width: 370px;">
<b-row>
<b-col>
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
    props: ['auth'],
    components: { navbar },
    data () {
      return {
        categories: {},
      }
    },
    created() {
    }
 }

</script>
