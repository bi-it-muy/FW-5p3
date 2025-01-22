<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/congratulations', function () {
    return view('congratulations', ['name' => 'Testulus Maximus III']);
});
