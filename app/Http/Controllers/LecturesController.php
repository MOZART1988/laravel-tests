<?php

namespace App\Http\Controllers;

use App\Lecture;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class LecturesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lectures = Lecture::all();

        if ($lectures === null) {
            throw new NotFoundHttpException();
        }

        return view('lectures.index', ['lectures' => $lectures]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $lecture = Lecture::find($id);

        if ($lecture === null) {
            throw new NotFoundHttpException();
        }

        return view('lectures.show', ['lecture' => $lecture]);
    }

    public function tests($id)
    {
        $lecture = Lecture::find($id);

        if ($lecture === null) {
            throw new NotFoundHttpException();
        }

        if (!$lecture->tests) {
            throw new NotFoundHttpException();
        }

        return view('lectures.tests', ['tests' => $lecture->tests]);
    }
}
