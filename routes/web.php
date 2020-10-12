<?php
use App\Events\FormSubmitted;


Route::get('/', function () {
   return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/message/{id}', 'HomeController@getMessage')->name('message');

Route::post('/message', 'HomeController@sendMessage');

Route::get('test',function () {
 return view('counter');
});

Route::get('/sender',function () {
    return view('sender');
});

Route::post('/sender','HomeController@popMessage');
 