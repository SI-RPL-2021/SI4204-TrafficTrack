<?php

namespace App\Http\Controllers;

use App\Models\Cctv;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CctvController extends Controller
{
    public function index()
    {
        $cctv = Cctv::all();
        $admin = DB::select("SELECT * FROM admin WHERE id=?",[session("log")]);

        return view("kelolacctv", ["cctv"=>$cctv,"admin"=>$admin[0] ?? null]);
    }

    public function tambahcctvform()
    {
        $admin = DB::select("SELECT * FROM admin WHERE id=?",[session("log")]);
        return view('tambahcctv', ["admin"=>$admin[0] ?? null]);
    }

    public function tambah(Request $r)
    {
        $cc = new Cctv($r->all());
        $cc->save();
        return back()->with("success","Berhasil menambahkan CCTV");
    }

    public function delete($id)
    {
        $cc = Cctv::where("id",$id);
        $cc->delete();
        return back()->with("success","Berhasil menghapus CCTV");
    }

    public function setPublik($id)
    {
        $cc = Cctv::where("id",$id)->first();
        $cc->public = 1;
        $cc->save();
        return back()->with("success","Berhasil mengupdate CCTV");
    }

    public function setPribadi($id)
    {
        $cc = Cctv::where("id",$id)->first();
        $cc->public = 0;
        $cc->save();
        return back()->with("success","Berhasil mengupdate CCTV");
    }
}
