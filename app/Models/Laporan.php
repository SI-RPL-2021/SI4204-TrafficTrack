<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    use HasFactory;
    protected $table = "laporan";
    protected $fillable = [
        'id_pengguna',
        'jenis',
        'berat',
        'alamat',
        'foto',
        'komentar'
    ];
}
