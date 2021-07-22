<?php

use App\Http\Controllers\AlumnosController;
use App\Http\Controllers\ProductosController;
use Illuminate\Routing\Route as RoutingRoute;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

//ruta para mostrar vista
Route::name('index')->get('/',[AlumnosController::class, 'index']);
//ruta para listar los registros
Route::name('editar')->get('editar/{id}',[AlumnosController::class,'edit']);
Route::name('store')->post('store/',[AlumnosController::class,'store']);
Route::name('destroy')->delete('destroy/{id}',[AlumnosController::class,'destroy']);

//Carrito
Route::name('productos')->get('productos',[ProductosController::class,'index']);
Route::name('carrito')->get('carrito',[ProductosController::class,'carrito']);
Route::name('agregar')->get('agregar/{id}',[ProductosController::class,'agregar']);
Route::name('actualizar')->patch('actualizar',[ProductosController::class,'actualizar']);
Route::name('borrar')->delete('borrar', [ProductosController::class, 'borrar']);
Route::name('venta')->get('venta', [ProductosController::class, 'venta']);

//Ruta de pdf
Route::name('pdfalumnos')->get('pdfalumnos',[AlumnosController::class,'gePdfAlumnos']);

//Ruta de excell
Route::name('export')->get('export',[AlumnosController::class,'export']);
Route::name('import')->get('import',[AlumnosController::class,'import']);

//rutas qr
Route::name('qrcode')->get('qrcode', [ProductosController::class, 'GenerarQr']);
Route::view('scann', 'scann');
