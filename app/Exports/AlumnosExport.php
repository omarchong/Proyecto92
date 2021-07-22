<?php

namespace App\Exports;

use App\Models\Alumnos;
//use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Illuminate\Contracts\View\View;

class AlumnosExport implements FromView, ShouldAutoSize
{
    use Exportable;
    
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('export', ['alumnos' =>Alumnos::all()]);
    }
}
