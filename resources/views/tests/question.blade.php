@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">{{$question->question}}</div>
                    <div class="panel-body">
                        <form class="form-horizontal" method="POST">
                            {{ csrf_field() }}
                            <div class="col-md-8">
                                <fieldset class="form-group">
                                    @isset($question->answers)
                                    @foreach ($question->answers as $answer)
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="answer_id" value="{{$answer->id}}">
                                                {{$answer->answer}}
                                            </label>
                                        </div>
                                    @endforeach
                                    @endisset
                                </fieldset>
                                <button type="submit" class="btn btn-success">Следующий</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
@endsection

