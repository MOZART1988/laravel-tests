<?php
/**
 * Created by PhpStorm.
 * User: MOZART
 * Date: 24.12.2017
 * Time: 21:06
 */

namespace App\Admin\Controllers;


use App\Answer;
use App\Http\Controllers\Controller;
use App\Question;
use App\Results;
use App\Test;
use App\User;
use Encore\Admin\Layout\Content;
use Illuminate\Http\Request;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Form;;

class ResultsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Результаты');

            $content->body($this->grid());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Results::class, function (Grid $grid) {
            $grid->disableExport();
            $grid->disableRowSelector();
            $grid->disableActions();
            $grid->disableCreation();
            
            $grid->id('ID')->sortable();
            $grid->user_id('Пользователь')->display(function(){
                return User::find($this->user_id)->name;
            });
            $grid->test_id('Тест')->display(function(){
                return Test::find($this->test_id)->title;
            })->sortable();
            $grid->question_id('Вопрос')->display(function(){
                return Question::find($this->question_id)->question;
            })->sortable();
            $grid->answer_id('Ответ')->display(function(){
                return Answer::find($this->answer_id)->answer;
            })->sortable();
        });
    }
}