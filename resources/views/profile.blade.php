@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">{{$user->name}}</div>
                    <div class="panel-body">
                        <h3>Пройденные тесты</h3>
                        @isset($tests)
                            <ul>
                                @foreach($tests as $test)
                                    <li><a href="/results/{{$test->id}}}">{{$test->title}}</a></li>
                                @endforeach
                            </ul>
                        @endisset
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection