@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">{{$test->title}}</div>
                    <div class="panel-body">
                        @foreach($results as $result)
                            @if($result->answer->is_correct == 1)
                                <p style="color:green">{{$result->question->question}} - {{$result->answer->answer}}</p>
                            @else
                                <p style="color:red">{{$result->question->question}} - {{$result->answer->answer}}</p>
                            @endif
                        @endforeach
                            <br/>
                            <a href="/question/{{$firstQuestion->id}}">Попробовать заново</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection