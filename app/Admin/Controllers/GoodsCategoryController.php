<?php

namespace App\Admin\Controllers;

use App\Models\GoodsCategory;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use App\Admin\Extensions\Tools\MyButton;
use Encore\Admin\Auth\Permission;

class GoodsCategoryController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        Permission::check('article-index');
        return Admin::content(function (Content $content) {

            $content->header('商品分类');
            $content->description('商品分类列表');

            $content->body($this->grid());
        });
    }

    /**
     * Show interface.
     *
     * @param $id
     * @return Content
     */
    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Detail');
            $content->description('description');

            $content->body(Admin::show(GoodsCategory::findOrFail($id), function (Show $show) {

                $show->id('编号');
                $show->sort('排序');
                $show->title('标题');
                $show->category_id('分类名称');
                $show->created_at('创建时间');
                $show->updated_at('更新时间');
            }));
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Edit');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Create');
            $content->description('description');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(GoodsCategory::class, function (Grid $grid) {

            $grid->goods_category_id('ID')->sortable();
            // 第二列显示title字段，由于title字段名和Grid对象的title方法冲突，所以用Grid的column()方法代替
            $grid->goods_category_name('商品分类名称');
            $grid->goods_category_pid('上级分类');
            //是否显示
            $grid->sort('排序')->sortable();
            $grid->is_del('是否删除')->display(function ($released) {
                return $released ? '是' : '否';
            })->sortable();
//            $grid->tools(function($tools){
//                $url = "/admin/artimage";
//                $icon = "fa-backward";
//                $text = "返回";
//                $tools->append(new MyButton($url,$icon,$text));
//            });
            /**
             * 筛选
             */
            $grid->filter(function($filter){

                // 去掉默认的id过滤器
                $filter->disableIdFilter();
                // 在这里添加字段过滤器
                $filter->like('goods_category_name', '分类名称');
            });
            $grid->updated_at('更新时间')->sortable();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(GoodsCategory::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title', '标题')->rules('required');
            $form->textarea('desc', '简介')->rules('required');
            $form->number('sort','排序');
            $form->editor('centent', '内容')->rules('required|min:3');
            $form->select('category_id','文章分类')->options('/admin/AjaxCategory')->rules('required');
            $form->switch('is_del', '是否启用')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}

