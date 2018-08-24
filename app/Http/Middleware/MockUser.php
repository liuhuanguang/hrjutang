<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/23
 * Time: 18:13
 */

namespace App\Http\Middleware;
use Closure;
use Overtrue\Socialite\User as SocialiteUser;

class MockUser
{
    public function handle($request, Closure $next)
    {

        $user = new SocialiteUser([
            'id' => '12345',//openid
            'name' => 'mock',
            'nickname' => 'mock user',
            'avatar' => '',
            'email' => null,
            'original' => [],
            'provider' => 'WeChat',
        ]);
        session(['wechat.oauth_user.default' => $user]);
        return $next($request);
    }

    protected $routeMiddleware = [
        'mock.user' => \App\Http\Middleware\MockUser::class,
    ];
}