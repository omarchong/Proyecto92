<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <title>Laravel</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css" />

</head>

<body>
    <div class="col-md-12">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="{{route('index')}}">Crud modal</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="{{route('productos')}}">Carrito de compras <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="{{route('qrcode')}}">Qrcode<span class="sr-only">(current)</span></a>
                    </li>

                </ul>

            </div>
        </nav>
    </div>
    <div class="container mt-5">
        <h2 class="text-center">Laravel 8 Practicas Omar Chong Lopez IDGS-92</h2>
        <a href="javascript:void(0)" id="createNewCustomer" class="btn btn-primary">Crear nuevo alumno</a>
        <a href="{{ url('pdfalumnos') }}" class="btn btn-danger">PDF-Alumnos</a>
        <a href="{{ url('export') }}" class="btn btn-success">Excel alumnos</a><br><br><br>
        <div class="form-group">
            <h3>Excel | formulario de importación</h3>
            <form action="{{ route('import') }}" method="post" enctype="multipart/form-data" name="excelimport">
                @csrf
                <input type="file" name="file" class="form-control" required><br>
                <button class="btn btn-success">Importar Archivo Excel</button>
            </form>
        </div>


        <table class="table table-bordered yajra-datatable">
            <thead>
                <tr>
                    <th>Clave</th>
                    <th>Matricula</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Genero</th>
                    <th>Fecha de N.</th>
                    <th>E-mail</th>
                    <th>Otros</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
        <br></hr>


    </div>

    <!-- formulario modal/-->
    <div class="modal fade" id="ajaxModel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="modelHealing"></h4>
                    <div class="modal-body">
                        <img src="" id="img_logo" alt="" style="width: 50px">
                        <form id="CustomerForm" name="customerForm" class="form-horizontal" enctype="multipart/form-data">
                            <input type="text" name="Customer_id" id="Customer_id">

                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">Matricula</label>
                                <div class="col-sm-12">
                                    <input type="text" name="matricula" id="matricula" class="form-control" placeholder="Indique su matricula" value="" maxlength="12" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">Nombre</label>
                                <div class="col-sm-12">
                                    <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Indique su nombre" value="" maxlength="30" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">Apellido</label>
                                <div class="col-sm-12">
                                    <input type="text" name="app" id="app" class="form-control" placeholder="Indique su apellido" value="" maxlength="30" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">Fecha nacimiento</label>
                                <div class="col-sm-12">
                                    <input type="date" name="fn" id="fn" class="form-control" placeholder="Indique su fecha de nacimiento" value="" maxlength="10" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Genero</label>
                                <div class="col-sm-12">
                                    <div class="form-check">
                                        <input type="radio" name="gen" id="gen" class="form-check-input" value="Femenino" checked>
                                        <label class="form-check-label" for="gen">Femenino</label>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" name="gen" id="gen" class="form-check-input" value="Masculino">
                                        <label class="form-check-label" for="gen">Masculino</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="img" class="col-sm-2 control-label">Foto</label>
                                <div class="col-sm-12">
                                    <input type="file" id="img1" alt="" name="img1" class="form-control">
                                    <input type="text" id="img2" name="img2" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">E-mail</label>
                                <div class="col-sm-12">
                                    <input type="text" name="email" id="email" class="form-control" placeholder="Indica un correo valido" value="" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="" class="col-sm-2 control-label">Contraseña</label>
                                <div class="col-sm-12">
                                    <input type="password" name="pass" id="pass" class="form-control" placeholder="Ingresa contraseña" value="" required="">
                                </div>
                            </div>

                            <div class="col-sm-offset-2 col-sm-10">
                                <center> <button type="submit" value="create" id="saveBtn" name="saveBtn" class="btn btn-primary">Enviar</button></center>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

<script type="text/javascript">
    $(function() {

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        var table = $('.yajra-datatable').DataTable({
            processing: true,
            serverSide: true,
            ajax: "",
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex'
                },
                {
                    data: 'matricula',
                    name: 'matricula'
                },
                {
                    data: 'nombre',
                    name: 'nombre'
                },
                {
                    data: 'app',
                    name: 'app'
                },
                {
                    data: 'gen',
                    name: 'gen'
                },
                {
                    data: 'fn',
                    name: 'fn'
                },
                {
                    data: 'email',
                    name: 'email'
                },

                {
                    data: 'otros',
                    name: 'otros',
                    orderable: false,
                    searchable: false
                },
            ]
        });

        //nuevo
        $('#createNewCustomer').click(function() {
            $('#saveBtn').val('create-Customer');
            $('#Customer_id').val("");
            $('#img_logo').attr("src", "");
            $('#CustomerForm').trigger("reset");
            $('#modelHeading').html("crear nuevo registros");
            $('#ajaxModel').modal("show");
        });

        //modificar
        $('body').on('click', '.editCustomer', function() {
            var id = $(this).data('id');
            $.get("editar/" + id, function(data) {
                $('#modelHeading').html("Editar customer");
                $('#saveBtn').val("edit-user");
                $('#ajaxModel').modal("show");
                $('#Customer_id').val(data.id);
                $('#matricula').val(data.matricula);
                $('#nombre').val(data.nombre);
                $('#app').val(data.app);
                $('#fn').val(data.fn);
                $('#img2').val(data.img);
                var datimg = $('#img2').val();
                datimg = "http://locahost/proyecto92/public/img/" + datimg;
                $('#img_logo').attr("src", datimg);
                $('#email').val(data.email);
                $('#pass').val(data.pass);
            })
        });


        //guardar
        $('form').submit(function(e) {
            e.preventDefault();
            var formData = new FormData($(this)[0]);
            $.ajax({
                data: formData,
                url: "{{ route('store') }}",
                type: "POST",
                contentType: false,
                processData: false,
                dataType: "json",
                success: function(data) {
                    $('#CustomerForm').trigger('reset');
                    $(this).html('Enviando ...');
                    $('#ajaxModel').modal('hide');
                    table.draw();
                },
                error: function(data) {
                    console.log('Error: ', data);
                    $('#saveBtn').html('Guardar cambio');
                }
            });
        });
        //delete
        $('body').on('click', '.deleteCustomer', function() {
            var id = $(this).data("id");
            if (confirm(`esta seguro de querer eliminar al usuario: ${id}`)) {
                $.ajax({
                    type: "DELETE",
                    url: "{{ url('destroy') }}" + "/" + id,
                    success: function(data) {
                        table.draw();
                    },
                    error: function(data) {
                        console.log("Error: ", data);
                    }

                });

            } else {}
        });
    });
</script>

</html>
