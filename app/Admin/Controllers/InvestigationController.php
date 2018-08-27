<?php

namespace App\Admin\Controllers;

use App\Models\Investigation;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use App\Admin\Extensions\Tools\MyButton;
use Encore\Admin\Auth\Permission;

class InvestigationController extends Controller
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

            $content->header('问卷调查');
            $content->description('问卷调查');

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

            $content->body(Admin::show(Investigation::findOrFail($id), function (Show $show) {

                $show->id('编号');
                $show->sort('排序');
                $show->title('标题');
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
        return Admin::grid(Investigation::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            // 第二列显示title字段，由于title字段名和Grid对象的title方法冲突，所以用Grid的column()方法代替
            $grid->column('title','标题');
            //是否显示
            $grid->sort('排序')->sortable();
            $grid->is_del('是否启用')->display(function ($released) {
                return $released ? '启用' : '禁止';
            });
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
                $filter->like('title', '标题');

            });
            $grid->created_at('创建时间')->sortable();
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
        return Admin::form(Investigation::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title', '标题')->rules('required');
            $form->number('sort','排序');
            $form->switch('is_del', '是否删除')->rules('required');
            $form->switch('is_show', '是否启用')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }

}
