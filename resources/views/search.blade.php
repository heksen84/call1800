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
	<link rel="icon" href="{{ asset('./voice.ico') }}">
    </head>
    <body>
  <div id="app">
	<navbar></navbar>
	<b-modal id="modal1" size="sm" title="Call" hide-footer>
	 <b-btn class="mt-3" block variant="success">call-1</b-btn>
	 <b-btn class="mt-3" block variant="success">call-2</b-btn>
	</b-modal>

  <b-container fluid>
  <b-row class="text-center">
    <b-col class="text-center">
      <br>
        <h2 style="color:grey">Search results for</h2>
        <h6 style="color:rgb(50,50,50);margin-top:-5px">{{ $search_string }}</h6>
      <br>
	<ins>advert</ins>
      <br>
      <br>
      <b-card-group deck class="mb-3">
        @foreach($numbers as $num)
	<!--v-on:click="hello"-->
       	<b-card  v-b-modal.modal1 header="<b>{{ $num->number }}</b>" class="text-center"
	img-src="{{ asset('./images/map.png') }}"
          img-alt="Image"
          img-top>
           <p class="card-text">{{ $num->description }}</p>
       	</b-card>
        @endforeach

       </b-card-group>
	<ins>advert</ins>
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