<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/25
 * Time: 20:06
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class UserAnswer extends Model
{
    protected $table = 'user_answer';
    protected $fillable = ['user_id', 'centent'];

}