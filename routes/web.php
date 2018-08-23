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
    Route::get('/index', '\Modules\User\Http\Controllers\UserController@index');
});

/**
 * 商品模块
 */
Route::group(['prefix'=>'goods'],function (){
    Route::get('/index', '\Modules\User\Http\Controllers\goodsController@index');
});

/**
 * 经销商模块
 */
Route::group(['prefix'=>'distributor'],function (){
    Route::get('/index', '\Modules\User\Http\Controllers\goodsController@index');
});
