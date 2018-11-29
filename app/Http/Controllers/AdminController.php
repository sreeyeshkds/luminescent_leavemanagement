<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Admin;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function applyforleave()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $from_date =  $request->input('from_date');
        $to_date = $request->input('to_date');
        $reason_forleave = $request->input('reason_forleave');
        $backup_employee = $request->input('backup_employee');

        # save the changes to the database;
        $objAdmin = new Admin();
        $stat = $objAdmin->insertLeaveDetails($from_date,$to_date,$reason_forleave,$backup_employee);
        if ($stat != '')
        {
            return redirect('/admin/applyforleave')->with('status', 'Leave Details updated!');
        }
        else
        {
            echo "not updated";
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
