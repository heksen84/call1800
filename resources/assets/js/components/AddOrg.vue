<template>
<div>
<navbar :auth="auth"></navbar>
<!-- контент -->
<b-container>
<b-row>
<b-col>
<center><h3>Hello, {{ username }}!</h3></center>
<br>
<br>
<b-nav fill tabs>
  <b-nav-item active>New company</b-nav-item>
  <b-nav-item>My companies</b-nav-item>
</b-nav>
<br>
<br>
<center>
<b-form @submit="onSubmit" @reset="onReset" style="width:380px;">
      <b-form-group id="exampleInputGroup1"
                    label="Number:"
                    label-for="Input2"
        <b-form-input id="Input2"
                      type="text"
                      required
                      placeholder="Enter number">
        </b-form-input>
      </b-form-group>
      <br>
      <b-form-group id="exampleInputGroup2"
                    label="Name:"
                    label-for="Input2"
        <b-form-input id="Input2"
                      type="text"
                      required
                      placeholder="Enter company name">
        </b-form-input>
        <br>
        <b-form-textarea id="textarea1"
                     placeholder="Enter description"
                     :rows="3"
                     :max-rows="6">
        </b-form-textarea>
      </b-form-group>
      <br>
      <center>
        <b-button type="submit" variant="primary">Save</b-button>
        <b-button type="reset" variant="danger">Reset</b-button>
      </center>
    </b-form>
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
        categories: {},
      }
    },
    created() {
    }
}
</script>
