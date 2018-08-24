<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/23
 * Time: 19:56
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Prize extends Model
{
    protected $fillable = ['luck_draw_id', 'user_id'];
    public $cache_key = 'larabbs_links';
    protected $cache_expire_in_minutes = 1440;
    protected $table = 'prize'; //指定数据表名称
}