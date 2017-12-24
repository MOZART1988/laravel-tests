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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/lectures', 'LecturesController@index');
Route::get('/lectures/show/{id}', 'LecturesController@show');
Route::get('/lectures/tests/{id}', 'LecturesController@tests');

Route::get('/tests/show/{id}', 'TestsController@show');
