<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pengguna;
use Illuminate\Support\Facades\DB;

class RegisterController extends Controller
{
    public function index()
    {
        return view("register");
    }

    public function register(Request $request)
    {
        
        $res = DB::select("SELECT * FROM pengguna WHERE email = ? AND password = ?",[$request->post("email"),$request->post("password")]);
        if (count($res) > 0)
        {
            return back();
        }

        $randname = rand(0,99999).'_'.$request->file("ktp")->getClientOriginalName();
        $request->file("ktp")->storeAs("public/ktp",$randname);

        $p = new Pengguna($request->all());
        $p->ktp = $randname;
        $p->save();
        
        $res = DB::select("SELECT * FROM pengguna WHERE email = ? AND password = ?",[$request->post("email"),$request->post("password")]);
        session([
            "log"=>$res[0]->id,
            "role"=>"pengguna"
            ]);
        return redirect(url("/home"));
    }
}
