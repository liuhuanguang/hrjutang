<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('users', UserController::class); //会员管理
    $router->resource('article', ArticleController::class); //文章管理
    $router->resource('article', ArticleController::class); //文章列表
    $router->resource('category', ArticleCategoryController::class); //文章分类
    $router->resource('AjaxCategory', AjaxCategory::class); //获取文章分类
    $router->resource('goods', GoodsController::class); //商品列表
    $router->resource('GoodsCategory', GoodsCategoryController::class); //商品分类列表
});
