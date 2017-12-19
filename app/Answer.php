<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    protected $fillable = [
        'question_id',
        'answer'
    ];

    public function question()
    {
        $this->belongsTo('App\Question');
    }
}
