<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class UsersController extends Controller
{
    public function profile()
    {
        $user = User::find(Auth::user()->id);

        if ($user === null) {
            throw new NotFoundHttpException();
        }

        return view('profile', ['user' => $user]);
    }
}
