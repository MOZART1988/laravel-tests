<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lecture extends Model
{
    protected $fillable = [
        'title',
        'youtube_video',
        'description'
    ];

    public function tests()
    {
        return $this->hasMany('App\Test');
    }

    public static function getAllLectures()
    {
        $models = Lecture::all();

        $result = [];

        foreach ($models as $model) {
            $result[$model->id] = $model->title;
        }

        return $result;
    }
}
