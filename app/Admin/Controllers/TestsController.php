<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Lecture;
use App\Test;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Form;
use Illuminate\Http\Request;

class TestsController extends Controller
{
    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Тесты');

            $content->body($this->grid());
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

            $content->header('Создать тест');

            $content->body($this->form());
        });
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'lecture_id' => 'required',
            'description' => 'required',
        ]);

        Test::create($request->all());

        return redirect()->route('tests.index');
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
            $test = Test::find($id);

            $content->header('Редактировать тест ' . $test->title);

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Test $test)
    {
        $this->validate($request, [
            'title' => 'required',
            'lecture_id' => 'required',
            'description' => 'required',
        ]);

        $test->update($request->all());

        return redirect()->route('tests.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function destroy(Test $test)
    {
        $test->delete();

        return redirect()->route('tests.index');
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Test::class, function (Grid $grid) {
            $grid->disableExport();
            $grid->disableRowSelector();
            $grid->id('ID')->sortable();
            $grid->title('Название')->sortable();
            $grid->lecture_id('Лекция')->sortable();
            $grid->created_at('Дата создания');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Test::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title', 'Название');
            $form->select('lecture_id', 'Лекция')->options(Lecture::getAllLectures());
            $form->textarea('description', 'Описание');

            $form->display('created_at', 'Дата создания');
        });
    }
}
