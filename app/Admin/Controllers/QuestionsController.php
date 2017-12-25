<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Question;
use App\Test;
use Encore\Admin\Layout\Content;
use Illuminate\Http\Request;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Form;

class QuestionsController extends Controller
{


    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Вопросы');

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

            $content->header('Создать вопрос');

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
            'question' => 'required',
            'test_id' => 'required'
        ]);

        Question::create($request->all());

        return redirect()->route('questions.index');
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

            $question = Question::find($id);

            $content->header('Редактировать вопрос ' . $question->question);

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Question $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        $this->validate($request, [
            'question' => 'required',
            'lecture_id' => 'required'
        ]);

        $question->update($request->all());

        return redirect()->route('questions.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Question $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        $question->delete();

        return redirect()->route('questions.index');
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Question::class, function (Grid $grid) {
            $grid->disableExport();
            $grid->disableRowSelector();

            $grid->id('ID')->sortable();
            $grid->test_id('Тест')->display(function(){
                return Test::find($this->test_id)->title;
            })->sortable();
            $grid->question('Вопрос')->sortable();

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
        return Admin::form(Question::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('question', 'Вопрос');
            $form->select('test_id', 'Тест')->options(Test::getAllTests());

            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
