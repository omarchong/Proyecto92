<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductosTable extends Migration
{

    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->id();
            $table->string("nombre", 255);
            $table->text("descripcion");
            $table->decimal("costo", 6,2);
            $table->integer("cantidad");
            $table->string("img", 255);
            $table->timestamps();
        });
    }


    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
