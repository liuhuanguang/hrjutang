<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/24
 * Time: 12:01
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class OrderGoods extends Model
{
    protected $table = 'order_goods'; //指定数据表名称

    protected $fillable = ['goods_id','order_id','goods_details'];
}