@extends('layouts.app')
@section('content');
<div class="container">
    {!! amiGrid()->render(['data' => $data]) !!}
</div>
@stack('scripts')
@endsection
