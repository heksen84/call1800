<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="get numbers, free numbers" />
        <meta name="description" content="get free numbers">
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Call1800 - get free numbers.</title>
        <link rel="stylesheet" type="text/css" href="{{ mix('css/app.css') }}">
    </head>
    <body>
  <div id="app">
  <b-container fluid>
  <b-row class="text-center">
    <b-col class="text-center">
      <br>
        <h1 style="color:grey">Results</h1>
	advert
      <br>
      <b-card-group deck
                 class="mb-3">
       <b-card bg-variant="primary"
               text-variant="white"
               header="Primary"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
       <b-card bg-variant="secondary"
               text-variant="white"
               header="Secondary"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
       <b-card bg-variant="success"
               text-variant="white"
               header="Success"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
   </b-card-group>
   <b-card-group deck class="mb-3">
       <b-card bg-variant="info"
               text-variant="white"
               header="Info"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
       <b-card bg-variant="warning"
               text-variant="white"
               header="Warning"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
       <b-card bg-variant="danger"
               text-variant="white"
               header="Danger"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
   </b-card-group>
   <b-card-group deck
                 class="mb-3">
       <b-card bg-variant="light"
               header="Light"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
       <b-card bg-variant="dark"
               header="Dark"
               text-variant="white"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
       <b-card header="Default"
               class="text-center">
           <p class="card-text">number info</p>
       </b-card>
   	</b-card-group>

	advert	
    </b-col>
  </b-row>
<!--<b-pagination :total-rows="100" :per-page="10"></b-pagination>-->
</b-container>
<!--<welcome></welcome>-->
<!--@if (Route::has('login'))
@auth
<a href="{{ url('/home') }}">Home</a>

<welcome auth="true"></welcome>

@else
      <a href="{{ route('login') }}">Login</a>
      <a href="{{ route('register') }}">Register</a>

<welcome auth="false"></welcome>

@endauth
@endif-->
</div>
</body>
</html>
<script type="text/javascript" src="{{ mix('js/app.js') }}"></script>