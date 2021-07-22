<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVentasTable extends Migration
{

    public function up()
    {
        Schema::create('ventas', function (Blueprint $table) {
            $table->id();
            $table->integer('id_usu');
            $table->integer('id_pro');
            $table->decimal('costo', 6,2);
            $table->integer('cantidad');
            $table->timestamps();
        });
    }


    public function down()
    {
        Schema::dropIfExists('ventas');
    }
}
