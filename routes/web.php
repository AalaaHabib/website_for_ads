<?php

use Illuminate\Support\Facades\Route;



Route::get('/', 'Front\HomeController@index')->name('index');
Route::get('/home','Front\HomeController@ads')->name('ads');

//Ad Dashboard
Route::namespace('Admin')->prefix('dashboard')->group(function(){
    Route::get('/create','dashboardController@create')->name('createAd');
    Route::post('/store','dashboardController@store')->name('storeAd');
    Route::get('/edit/{id}','dashboardController@edit')->name('editAd');
    Route::post('/update','dashboardController@update')->name('updateAd');
    Route::get('/delete/{id}','dashboardController@delete')->name('delete');
});

