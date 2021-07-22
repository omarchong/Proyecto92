<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Alumnos;
use Barryvdh\DomPDF\PDF as DomPDFPDF;
use  App\Exports\AlumnosExport;
use  App\Imports\AlumnosImport;
use Maatwebsite\Excel\Excel;
use Yajra\DataTables\DataTables;
use Dompdf\Adapter\PDFLib;
use PDF;

class AlumnosController extends Controller
{
    private $excel;
    public function __construct(Excel $excel){
        $this->excel = $excel;
    }
    public function verpracticas()
    {
        return view('menu');
    }
    public function index(Request $request){

        if($request->ajax()){
            $data = Alumnos::latest()->get();
                return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('otros', function($row){
                    $btn = '<a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$row->id.'" data-original-title="Edit"
                    class="edit btn btn-secondary btn-sm editCustomer">Editar</a>';

                    $btn = $btn. '<a href="javascript:void(0)" data-toggle="tooltip" data-id="'.$row->id.'" data-original-title="Delete"
                    class="btn btn-danger btn-sm deleteCustomer">Borrar</a>';
                    return $btn;


                })

                ->rawColumns(['otros'])
                ->make(true);
        }
        return view('welcome');
    }

    ///STORAGE//
    public function store(Request $request){
        if ($request->Customer_id != '') {
            if($request->file('img1') != ''){
                $file = $request->file('img1');
                $img1 = $file->getClientOriginalName();
                //$name = $request->file('img1')->getClientOriginalName();
                $ldate = date('Ymd_His_');
                    $img2 = $ldate . $img1;
                \Storage::disk('local')->put($img2, \File::get($file));
            }
            else{
                $img2 = $request->img2;
            }
            Alumnos::where('id', $request->Customer_id)->update([
                'matricula' =>$request->matricula,
                'nombre' =>$request->nombre,
                'app' =>$request->app,
                'gen' =>$request->gen,
                'fn' =>$request->fn,
                'img' => $img2,
                'email' =>$request->email,
                'pass' =>$request->pass,
            ]);
        }
        else{
           //Alumnos::create($request->only('matricula','nombre','app','gen','fn','email','pass'));
           if($request->file('img1') !=''){
               $file = $request->file('img1');
               $img1 = $file->getClientOriginalName();
               $ldate = date('Ymd_His_');
               $img2 = $ldate . $img1;
               \Storage::disk('local')->put($img2, \File::get($file));
           }
           else{
               //$img2 = $request->img2; //Datos creador por seeder
               $img2 = 'shadow.jpg';    //datos creadoe por usuario
           }
                Alumnos::create(array(
                    'matricula' =>$request->matricula,
                    'nombre' =>$request->nombre,
                    'app' =>$request->app,
                    'gen' =>$request->gen,
                    'fn' =>$request->fn,
                    'img' => $img2,
                    'email' =>$request->email,
                    'pass' =>$request->pass,
                ));
            }
        return response()->json(['success' =>'El cliente se guardo correctamente!']);
    }

    public function edit($id){
        $query = Alumnos::find($id);
        return response()->json($query);
    }

    public function destroy($id){
        Alumnos::find($id)->delete();
        return response()->json(['success' =>'Cliente Borrado!']);
    }

    //PDF///
    public function gePdfAlumnos(){
        $pdfalum = Alumnos::all();
        $pdf = PDF::loadView('pdf', compact('pdfalum'));
            return $pdf->download('pdf_alumnos.pdf');
    }

    public function export(){
       return $this->excel->download(new AlumnosExport, 'alumnos.xlsx');
    }

    public function import(){
         $this->excel->import(new AlumnosImport, request()->file('file'));
        return back();
     }
}
