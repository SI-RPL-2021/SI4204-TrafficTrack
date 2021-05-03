<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListPerempatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('list_perempatan', function (Blueprint $table) {
            $table->id();
            $table->string("nama");
            $table->string("tingkatmacet");
            $table->string("kecepatanmaks");
            $table->string("lampu")->default("hijau");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('list_perempatan');
    }
}
