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
	      <link rel="icon" href="{{ asset('./voice.ico') }}">
    </head>
    <body>
<div id="app">

  @if (Auth::guest())
    guest
  @else
    registered
  @endif
		    <br>
        <center>
        <h3>Hello, {{ Auth::user()->name }}!</h3>
        <br>
			  <b-button variant="success">Add Number</b-button>
			  <b-button variant="danger">Delete Number</b-button>
		    </center>
</div>
<link rel="stylesheet" type="text/css" href="{{ mix('css/app.css') }}">
<script type="text/javascript" src="{{ mix('js/app.js') }}"></script>
</body>
</html>
