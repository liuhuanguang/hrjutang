<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/14
 * Time: 18:42
 */

namespace App\Admin\Controllers;
use App\Http\Controllers\Controller;
use App\Models\ArticleCategory;
use app\Transformers\ArticleCategoryTransformer;
use Fractal;
class AjaxCategory extends Controller
{
    public function index(ArticleCategory $articleCategory){
        $Category = ArticleCategory::all()->toArray();
        $new = [];
        if(!empty($Category)){
            foreach ($Category as $key=>$value){
                if(!empty($value)){
                    $new[$key]['id'] = $value['id'];
                    $new[$key]['text'] = $value['name'];
                }
            }
        }
        return $new;
    }
}