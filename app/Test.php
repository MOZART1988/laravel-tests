<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    protected $fillable = [
        'lecture_id',
        'title',
        'description'
    ];

    public function lecture()
    {
        return $this->belongsTo('App\Lecture');
    }

    public function questions()
    {
        return $this->hasMany('App\Question');
    }

    public static function getAllTests()
    {
        $models = Test::all();

        $result = [];

        foreach ($models as $model) {
            $result[$model->id] = $model->title;
        }

        return $result;
    }
}
