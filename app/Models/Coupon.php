<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/24
 * Time: 14:15
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    protected $table = 'discount'; //指定数据表名称
    protected $fillable = ['discount_name', 'discount_price', 'discount_full_money', 'use_at', 'start_at', 'end_at', 'user_id', 'goods_category_id', 'discount_category_id'];
}