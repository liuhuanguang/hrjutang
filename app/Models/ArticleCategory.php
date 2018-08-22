<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ArticleCategory extends Model
{
    protected $table = 'article_categorys'; //指定数据表名称

    protected $fillable = ['name', 'id'];

    public function article()
    {
        return $this->belongsTo(Article::class, 'category_id');
    }
}
