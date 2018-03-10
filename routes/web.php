<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});


/*Route::get('/details', function () {
    return view('details');
});*/

Route::get('/details/{search}', 'DetailsController@index')->name('details');

/*Route::get('/details', function () {
    return view('details');
});*/

Route::get('/home', 'HomeController@index')->name('home');
