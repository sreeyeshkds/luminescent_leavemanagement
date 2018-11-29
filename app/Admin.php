<?php

namespace App;
use DB;
use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    //
    public function insertLeaveDetails($from_date,$to_date,$reason_forleave,$backup_employee)
    {
        return  $id = DB::table('leave_tbl')->insertGetId(
            [
                'from_date' => $from_date,
                'to_date' => $to_date,
                 'reason' => $reason_forleave,
                 'backup_employee' => $backup_employee
                 ]
        );
    }
}
