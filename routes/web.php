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

// Route::get('/', function () {
    
// });
// Route::get('developers', function () {
	
// });
// Route::get('blog', function () {
	
// });
// Route::get('contacto', function () {
	
// });

Route::get('/', 'PagesController@getIndex');
Route::get('developers', 'PagesController@getDevelopers');
Route::get('blog', 'PagesController@getBlog');
Route::get('contacto', 'PagesController@getContact');



