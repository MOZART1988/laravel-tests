<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = [
        'test_id',
        'question'
    ];

    public function test()
    {
        return $this->belongsTo('App\Test');
    }

    public function answers()
    {
        return $this->hasMany('App\Answer');
    }

    public static function getAllQuestions()
    {
        $models = Question::all();

        $result = [];

        foreach ($models as $model) {
            $result[$model->id] = $model->title;
        }

        return $result;
    }
}
