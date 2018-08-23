<?php

namespace App\Admin\Controllers;

use App\Models\Goods;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use App\Admin\Extensions\Tools\MyButton;
use Encore\Admin\Auth\Permission;
use Encore\Admin\Widgets\Tab;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
class GoodsController extends Controller
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

            $content->header('商品管理');
            $content->description('商品列表');

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

            $content->body(Admin::show(Goods::findOrFail($id), function (Show $show) {

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
        return Admin::grid(Goods::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            // 第二列显示title字段，由于title字段名和Grid对象的title方法冲突，所以用Grid的column()方法代替
            $grid->goods_name('商品名称');
            $grid->goods_sn('商品编号');
            $grid->goods_category_id('商品分类');
            $grid->specification('简单描述');
            $grid->market_price('市场价');
            $grid->goods_price('本店价');
            $grid->goods_number('库存');
//            $grid->goods_desc('详细描述');
            $grid->goods_images('商品图片')->sortable();
            $grid->goods_type('商品类型');
            //是否显示
            $grid->sort('排序')->sortable();

            $grid->is_show('上架')->display(function ($released) {
                return $released ? '是' : '否';
            })->sortable();
            $grid->created_at('创建时间')->sortable();
            $grid->updated_at('更新时间')->sortable();
            /**
             * 筛选
             */
            $grid->filter(function ($filter) {

                // 去掉默认的id过滤器
                $filter->disableIdFilter();
                // 在这里添加字段过滤器
                $filter->like('goods_name', '商品名称');
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Goods::class, function (Form $form) {
            $form->tab('基本信息', function ($form) {
                $form->text('goods_name', '商品名称')->rules('required');
                $form->text('goods_sn', '商品货号');
                $form->select('goods_category_id', '商品分类')->options('/admin/catlist');
                $form->textarea('specification', '简单描述');
                $form->text('market_price', '市场价');
                $form->text('goods_price', '本店价');
                $form->text('goods_number', '库存');
                $form->image('goods_images','商品图片')->uniqueName()->move('public/upload/image');
                $form->editor('goods_desc', '详细内容');
                $form->number('sort', '排序');
                $form->switch('is_show', '是否上架')->rules('required');
            })->tab('商品类型', function ($form) {
                $form->select('goods_type', '商品类型')->options('/admin/Goodstype');
            });
            $form->display('id', 'ID');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
            $form->saving(function (Form $form) {
                if(empty($form->goods_sn)) {
                    $max_id = Db::table('goods')->max('id')+1;
                    $form->goods_sn="juhetang" . str_pad($max_id, 7, "0", STR_PAD_LEFT);
                    }

            });


        });

    }
}

