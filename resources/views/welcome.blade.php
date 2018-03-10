<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="сайт знакомств, знакомства, познакомиться, знакомство, встреча, роман, любовный роман, флирт, любовь, поиск партнера, свидание, вторая половина, отношения, путешествия, путешествие, поездка, вояж" />
        <meta name="description" content="Love in travels - это отличный способ найти себе половинку находясь в путешествии или за границей.">
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Сеть знакомств - Love In Travels</title>
        <link rel="stylesheet" type="text/css" href="{{ mix('css/app.css') }}">
    </head>
    <body>
<div id="app">
<welcome></welcome>
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
<script src="{{ asset('js/app.js') }}"></script>
