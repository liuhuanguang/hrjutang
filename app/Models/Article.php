<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    public function ArticleCategory()
    {
        return $this->hasMany(ArticleCategory::class, 'painter_id');
    }
}
