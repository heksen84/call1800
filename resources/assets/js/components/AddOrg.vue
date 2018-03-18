<template>
<div>
<navbar :auth="auth"></navbar>
<!-- контент -->
<b-container>
<b-row>
<b-col>
<h3>Hello, {{ username }}!</h3>
<br>
<b-nav fill tabs>
  <b-nav-item active>New company</b-nav-item>
  <b-nav-item>My companies</b-nav-item>
</b-nav>




<b-form @submit="onSubmit" @reset="onReset">
      <b-form-group id="exampleInputGroup1"
                    label="Email address:"
                    label-for="exampleInput1"
                    description="We'll never share your email with anyone else.">
        <b-form-input id="exampleInput1"
                      type="email"             
                      required
                      placeholder="Enter email">
        </b-form-input>
      </b-form-group>
      </b-form-group>
      <b-button type="submit" variant="primary">Submit</b-button>
      <b-button type="reset" variant="danger">Reset</b-button>
    </b-form>


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
        categories: {},
      }
    },
    created() {
    }
 }

</script>
