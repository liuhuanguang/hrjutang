<?php

namespace App\Admin\Controllers;

use App\Models\User;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use App\Models\BisOrder;


class BisOrderController extends Controller
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

            $content->header('经销商流水');
            $content->description('账单列表');
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

            $content->body(Admin::show(User::findOrFail($id), function (Show $show) {

                $show->id();
                $show->account();
                $show->created_at();
                $show->updated_at();
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

            $content->header('添加');
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
        return Admin::grid(BisOrder::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->account('商户');
            $grid->paid_price('金额');
            $grid->out_trade_no('微信支付单号');
            $grid->created_at('创建时间');
            $grid->updated_at('修改时间');
        });
    }



    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Bis::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('account','用户名');
            $form->password('password','密码');
            $form->hidden('qr_code');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');

            $form->saving(function (Form $form) {
               $form->password = md5($form->password);
               $time = time();
               QrCode::format('png')->generate('Hello,LaravelAcademy!',public_path('qrcodes/'.$time.'.png'));
               $form->qr_code = $time.'.png';
            });

        });
    }
}
