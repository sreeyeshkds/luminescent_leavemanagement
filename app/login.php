<?php

namespace App;
use DB;

use Illuminate\Database\Eloquent\Model;

class login extends Model
{
    //

    public function getUserDetails($username)
    {
        $result =   DB::select('select user.*,role.role_number from user_tbl user
        JOIN role_tbl role ON user.role_id = role.id
        where name in  (?) ', array($username));
       return $result;
    }

}
