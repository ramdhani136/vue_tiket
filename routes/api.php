<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('/categori','Categori\CategoriController');
Route::resource('/tiket','Tiket\TiketController');
Route::resource('/transaksi','Transaksi\TransaksiController');