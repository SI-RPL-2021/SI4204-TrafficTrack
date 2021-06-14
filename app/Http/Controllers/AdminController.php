<?php

namespace App\Http\Controllers;

use App\Models\Pengguna;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function verifikasiuser()
    {
        $pengguna = DB::select("select * from pengguna where terverifikasi = ?",["belum"]);

        $admin = DB::select("SELECT * FROM admin WHERE id=?",[session("log")]);
        return view("verifikasiuser",["pengguna"=>$pengguna,"admin"=>$admin[0]]);
    }

    public function doverifikasiuser($id)
    {
        $p = Pengguna::where("id",$id)->get()[0];
        $p->terverifikasi = "sudah";
        $p->save();

        return back();
    }
}
