<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Results extends Model
{
    protected $fillable = [
        'test_id',
        'question_id',
        'answer_id',
        'user_id'
    ];

    public function question()
    {
        return $this->belongsTo('App\Question');
    }

    public function test()
    {
        return $this->belongsTo('App\Test');
    }

    public function answer()
    {
        return $this->belongsTo('App\Answer');
    }
}
