<?php

namespace App\Admin\Controllers;

use App\Models\ArticleCategory;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ArticleCategoryController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Index');
            $content->description('description');

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

            $content->header('查看');
            $content->description('description');

            $content->body(Admin::show(ArticleCategory::findOrFail($id), function (Show $show) {

                $show->id('编号');
                $show->sort('排序');
                $show->icon('icon');
                $show->name('分类名称');
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
        return Admin::grid(ArticleCategory::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            // 第二列显示title字段，由于title字段名和Grid对象的title方法冲突，所以用Grid的column()方法代替
            $grid->column('name','分类名称');
            //是否显示
            $grid->is_del('是否启用')->display(function ($released) {
                return $released ? '启用' : '禁止';
            });
            $grid->icon()->image('', 50, 50);
            $grid->sort('排序')->sortable();
            $grid->created_at('创建时间')->sortable();;
            $grid->updated_at('更新时间')->sortable();;
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(ArticleCategory::class, function (Form $form) {

            $form->display('id', 'ID');
            // 添加text类型的input框
            $form->text('name', '分类名称')->rules('required');
            // 添加number类型的input框
            $form->number('sort', '排序');

            // 是否启用
            $form->switch('is_del', '启用？')->rules('required');
            //上传图片
            $form->image('icon','icon')->move('public/upload/image/')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
