<?php

namespace App\Http\Controllers;

use App\Question;
use App\Results;
use App\Test;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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

        $firstQuestion = Question::where('test_id', '=', $id)->orderBy('id')->first();

        Results::with('user_id', '=', Auth::user()->id)->where('test_id', '=', $id)->delete();

        if ($test === null) {
            throw new NotFoundHttpException();
        }

        return view('tests.show', ['test' => $test, 'firstQuestion' => $firstQuestion]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function question(Request $request, $id)
    {
        $question = Question::find($id);

        if ($question === null) {
            throw new NotFoundHttpException();
        }

        if ($request->isMethod('post')) {
            $this->validate($request, [
                'answer_id' => 'required',
            ]);

            $exist = Results::where('question_id', '=', $question->id)->where('user_id', '=', Auth::user()->id)->first();

            if ($exist!==null) {
                $exist->update([
                    'answer_id' => $request['answer_id'],
                    'question_id' => $question->id,
                    'user_id' => Auth::user()->id,
                    'test_id' => $question->test->id
                ]);
            } else {
                Results::create([
                    'answer_id' => $request['answer_id'],
                    'question_id' => $question->id,
                    'user_id' => Auth::user()->id,
                    'test_id' => $question->test->id
                ]);
            }

            if ($question->getNext() !== null) {
                return redirect('/question/' . $question->getNext()->id);
            }

            return redirect('/results/' . $question->test->id);

        }

        return view('tests.question', ['question' => $question]);
    }

    public function results($testId)
    {
        $test = Test::find($testId);

        if ($test === null) {
            throw new NotFoundHttpException();
        }

        $firstQuestion = Question::where('test_id', '=', $testId)->orderBy('id')->first();

        $results = Results::where('test_id', '=', $testId)->where('user_id', '=', Auth::user()->id)->get();

        if ($results === null) {
            throw new NotFoundHttpException();
        }

        return view('tests.results', ['results' => $results, 'test' => $test, 'firstQuestion' => $firstQuestion]);
    }
}
