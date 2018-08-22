<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/14
 * Time: 18:55
 */
namespace app\Transformers;

use App\Models\ArticleCategory;
use League\Fractal\TransformerAbstract;

class ArticleCategoryTransformer  extends TransformerAbstract
{
    public function transform(ArticleCategory $ArticleCategory) {
        return [
                'id' =>$ArticleCategory ->id,
                'title' =>$ArticleCategory ->title
               ];
    }
}