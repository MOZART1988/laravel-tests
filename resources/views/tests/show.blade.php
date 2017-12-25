@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">{{$test->title}}</div>
                    <div class="panel-body">
                        <p>{{$test->description}}</p>
                        @if($firstQuestion !== null)
                            <a href="/question/{{$firstQuestion->id}}">Начать тест</a>
                        @else
                            <p>Тест пока не готов</p> <a href="/lectures">К списку лекций</a>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection