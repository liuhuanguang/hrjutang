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
Route::get('/', '\Modules\Goods\Http\Controllers\IndexController@index');
Route::post('/payments/order_pay', '\Modules\Goods\Http\Controllers\PayController@create');
Route::get('/payments/pay', '\Modules\Goods\Http\Controllers\PayController@pay');
Route::post('/payments/integral_order_pay', '\Modules\Goods\Http\Controllers\PayController@create_integral');
Route::post('/payments/goods', '\Modules\Goods\Http\Controllers\PayController@create_goods');
/**
 * 用户模块
 */
Route::group(['prefix'=>'user'],function (){
    Route::middleware('wechat.oauth:snsapi_userinfo')->group(function () {
        Route::get('/login', 'SelfAuthController@autoLogin')->name('login');
    });
    Route::middleware('wechat.oauth:snsapi_userinfo')->group(function () {
        Route::get('/register', 'SelfAuthController@autoRegister')->name('register');
    });
});

//Route::get('/home', 'HomeController@index')->name('home');
