<?php

namespace App\Http\Controllers;

use App\Question;
use App\Test;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class TestsController extends Controller
{
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $test = Test::find($id);

        $firstQuestion = Question::find();

        if ($test === null) {
            throw new NotFoundHttpException();
        }

        return view('tests.show', ['test' => $test]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function question($id)
    {
        $test = Test::find($id);

        if ($test === null) {
            throw new NotFoundHttpException();
        }

        if ($test->questions === null) {
            throw new NotFoundHttpException();
        }

        return view('tests.show', ['test' => $test, 'questions' => $test->questions]);
    }
}
