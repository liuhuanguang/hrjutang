<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
class CatList extends Controller
{

    public function index()
    {
        $model=new Category();
        $data =$model->index();
        $cat=[];
        foreach($data as $key=>$val){
            $cat[$key]['id']=$val['id'];
            $cat[$key]['text']=$val['goods_category_name'];
        }

        return  $cat;
    }


}