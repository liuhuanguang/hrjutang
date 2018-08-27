<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/23
 * Time: 18:17
 */

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class SelfAuthController extends Controller
{
    public function getEasyWechatSession()
    {
        $user = session('wechat.oauth_user.default');
        return $user;
    }

    public function autoLogin(User $user)
    {
        $userInfo = $this->getEasyWechatSession();
        $openId = $userInfo['id'];
        //查看对应的openid是否已被注册
        $userModel = $user->where('openid', $openId)->first();
        //如果未注册，跳转到注册
        if (!$userModel) {
            return redirect()->route('register');
        } else {
            //如果已被注册，通过openid进行自动认证，
            //认证通过后重定向回原来的路由，这样就实现了自动登陆。
            //dd(Auth::attempt(['openid' => $openId, 'password' => '123456']));die;
            if(Auth::attempt(['openid' => $openId, 'password' => '123456'])) {
                session(['user'=>$userModel]);
                return redirect()->intended();
            }
        }
    }

    public function autoRegister()
    {
        $userInfo = $this->getEasyWechatSession();
    //根据微信信息注册用户。
        $userData = $userInfo['original'];
        $userData['password'] = bcrypt('123456');
        //注意批量写入需要把相应的字段写入User中的$fillable属性数组中
        User::create($userData);
        return redirect()->route('login');
    }
}