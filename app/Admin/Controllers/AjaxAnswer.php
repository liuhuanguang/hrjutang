<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/8/25
 * Time: 19:30
 */

namespace App\Admin\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Investigation;
use app\Transformers\ArticleCategoryTransformer;
use Fractal;

class AjaxAnswer extends Controller
{
    public function index(Investigation $investigation){
        $Category = Investigation::all()->toArray();
        $new = [];
        if(!empty($Category)){
            foreach ($Category as $key=>$value){
                if(!empty($value)){
                    $new[$key]['id'] = $value['id'];
                    $new[$key]['text'] = $value['title'];
                }
            }
        }
        return $new;
    }
}