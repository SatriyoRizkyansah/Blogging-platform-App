<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('/about', function () {
    return view('about', [
        'name' => "Satriyo Rizkyansah",
        'email' => "satriyorizkyansah@gmail.com",
        'img' => "img/123.jpeg"
    ]);
});

Route::get('/post', function () {
    return view('posts');
});