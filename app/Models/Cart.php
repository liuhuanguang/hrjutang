<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Cart extends Authenticatable
{
    protected $table = 'cart';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    public function goods()
    {
        return $this->belongsTo(Goods::class, 'goods_id','id');
    }
}
