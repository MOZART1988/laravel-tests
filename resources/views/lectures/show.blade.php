@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">{{$lecture->title}}</div>
                    <div class="panel-body">
                        <p>{{$lecture->description}}</p>
                        <iframe width="480" height="360" src="{{$lecture->youtube_video}}" frameborder="0" allowfullscreen></iframe>
                        <br/>
                        <a href="/lectures/tests/{{$lecture->id}}">Перейти к тестам</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection