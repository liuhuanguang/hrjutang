<?php
namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
class Category  extends Model
{
    //protected $table = 'goods_category'; //指定数据表名称
    public function index()
    {
        return Db::table('goods_category')->get()->map(function ($value) {
            return (array)$value;
        })->toArray();
    }



}