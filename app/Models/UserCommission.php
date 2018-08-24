<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/24
 * Time: 20:52
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserCommission extends Model
{
    protected $table = 'user_commission';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'money', 'card','card_name','card_bank',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
//    protected $hidden = [
//        'password', 'remember_token',
//    ];
}