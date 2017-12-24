<?php

namespace App\Http\Controllers;

use App\Lecture;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lectures = Lecture::all();

        return view('home', ['lectures' => $lectures]);
    }
}
