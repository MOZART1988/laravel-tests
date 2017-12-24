<?php

namespace App;

use Encore\Admin\Auth\Database\Administrator;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Administrator
{
    use Notifiable;
}
