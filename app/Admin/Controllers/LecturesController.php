<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Lecture;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Form;
use Illuminate\Http\Request;

class LecturesController extends Controller
{
    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Лекции');

            $content->body($this->grid());
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

            $lecture = Lecture::find($id);

            $content->header('Редактировать лекцию ' . $lecture->title);

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

            $content->header('Создать лекцию');

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
        return Admin::grid(Lecture::class, function (Grid $grid) {
            $grid->disableExport();
            $grid->disableRowSelector();

            $grid->id('ID')->sortable();
            $grid->title('Название')->sortable();
            $grid->description('Описание')->sortable();
            $grid->youtube_video('Youtube видео')->sortable();

            $grid->created_at('Дата создания')->sortable();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Lecture::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('title', 'Название')->placeholder('Название');
            $form->textarea('description', 'Описание')->placeholder('Описание');
            $form->text('youtube_video', 'Видео ютуб')->placeholder('Видео ютуб');

            $form->display('created_at', 'Дата создания');
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
            'description' => 'required',
            'youtube_video' => 'required',
        ]);

        Lecture::create($request->all());

        return redirect()->route('lectures.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Lecture $lecture
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lecture $lecture)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'youtube_video' => 'required',
        ]);

        $lecture->update($request->all());

        return redirect()->route('lectures.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Lecture  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lecture $lecture)
    {
        $lecture->delete();

        return redirect()->route('lectures.index');
    }
}
