<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAlumnosTable extends Migration
{

    public function up()
    {
      Schema::create('alumnos', function (Blueprint $table) {
          $table->id();
          $table->string('matricula');
          $table->string('nombre');
          $table->string('app');
          $table->string('gen');
          $table->string('fn');
          $table->string('img');
          $table->string('email')->unique();
          $table->string('pass');
          $table->timestamps();
      });
    }


    public function down()
    {
        Schema::dropIfExists('alumnos');
    }
}
