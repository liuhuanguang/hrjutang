<?php
/**
 * Created by PhpStorm.
 * User: LHG
 * Date: 2018/8/19
 * Time: 18:27
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Investigation extends Model
{
    protected $table = 'investigation'; //指定数据表名称

    /**
     * 获取问题答案
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
     public function answer()
     {
          return $this->hasMany(Answer::class, 'investigation_id', 'id');
     }
}