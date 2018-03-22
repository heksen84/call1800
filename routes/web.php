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

Route::get('/', function () { return view('welcome'); });
Route::get('/search','SearchController@Search')->name('search');
Route::get('/getOrgList/{org_name}/{server_index}', 'SearchController@getOrgList')->name('getOrgList');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/categories', 'CategoriesController@index')->name('categories');
Route::get('/categories/{item}', 'CategoriesController@getCategoryItems')->name('getCategoryItems');
Route::get('/addCompany/{number}/{name}/{website}/{orginfo}', 'OrgsController@addCompany')->name('addCompany');

/*Route::get('/logout',function(){
    Auth::logout();
    return view('welcome');
});*/

Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

//Route::get('/{number}', function () { return view('details'); });
//Route::get('/search/', function () { return view('details'); });
