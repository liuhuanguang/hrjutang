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

/**
 * 用户模块
 */
Route::group(['prefix'=>'user'],function (){
    Route::middleware('wechat.oauth:snsapi_base')->group(function () {
        Route::get('/login', 'SelfAuthController@autoLogin')->name('login');
    });
    Route::middleware('wechat.oauth:snsapi_userinfo')->group(function () {
        Route::get('/register', 'SelfAuthController@autoRegister')->name('register');
    });
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
