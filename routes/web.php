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

Route::get('/login', function () {
    return view('login/login');
});

Route::post('/login/store', 'LoginController@store');

Route::get('/admin/applyforleave', function () {
    return view('admin/create');
});

Route::post('/admin/store', 'AdminController@store');

Route::get('/users', function () {
    return view('welcome');
});

Route::get('/CRUD', function () {
    return view('crud/index');
});

Route::get('/CRUD', function () {
    return view('crud/index');
});

// Route::resource('crud', 'CRUDController');
