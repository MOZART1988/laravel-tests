<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    protected $fillable = [
        'lecture_id',
        'title'
    ];

    public function lecture()
    {
        return $this->belongsTo('App\Lecture');
    }

    public function questions()
    {
        return $this->hasMany('App\Question');
    }
}
