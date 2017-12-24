<?php

namespace App\Admin\Controllers;

use App\Answer;
use App\Http\Controllers\Controller;
use App\Question;
use Encore\Admin\Layout\Content;
use Illuminate\Http\Request;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Form;

class AnswersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Ответы');

            $content->body($this->grid());
        });
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Создать ответ');

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
            'answer' => 'required',
            'question_id' => 'required'
        ]);

        Answer::create($request->all());

        return redirect()->route('answers.index');
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

            $answer = Answer::find($id);

            $content->header('Редактировать ответ ' . $answer->answer);

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Answer $answer
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Answer $answer)
    {
        $this->validate($request, [
            'answer' => 'required',
            'question_id' => 'required'
        ]);

        $answer->update($request->all());

        return redirect()->route('answers.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Answer  $answer
     * @return \Illuminate\Http\Response
     */
    public function destroy(Answer $answer)
    {
        $answer->delete();

        return redirect()->route('answers.index');
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Answer::class, function (Grid $grid) {
            $grid->disableExport();
            $grid->disableRowSelector();

            $grid->id('ID')->sortable();
            $grid->question_id('Вопрос')->sortable();
            $grid->answer('Ответ')->sortable();

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
        return Admin::form(Answer::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('answer', 'Ответ');
            $form->select('question_id', 'Вопрос')->options(Question::getAllQuestions());
            $form->select('is_correct', 'Правильный')->options([1 => 'Да', 0 => 'Нет']);

            $form->display('created_at', 'Дата создания');
        });
    }
}
