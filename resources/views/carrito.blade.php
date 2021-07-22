<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
    .card {
        margin: 10px 5px 20px 5px;
    }

    nav {
        background-color: #EEE;
    }
    </style>
</head>

<body>
    <nav class="nav justify-content-end">
        @if(session('carrito'))
        <a href="" class="nav-link">
            El carrito contiene:{{count (session('carrito'))}}Articulos
        </a>
        @else
        <a href="#" class="nav-link"> El carrito contiene: 0 Articulos</a>
        @endif
    </nav>
    <div class="container">
        @if($message = Session::get('success'))
        <div class="alert alert-success alert-block">
            <strong>{{$message}}</strong>

        </div>
        @endif
        <!------------------------------------------------->
        <table id="cart" class="table table-condensed">
            <thead>
                <tr>
                    <th style="width:50%">Producto</th>
                    <th style="width:10%">Costo</th>
                    <th style="width:8%">Cantidad</th>
                    <th style="width:22%" class="text-center">Subtotal</th>
                    <th style="width:10%">Otros</th>
                </tr>
            </thead>
            <tbody>
                <?php $total = 0; ?>
                @if(session('carrito'))
                @foreach(session('carrito') as $id =>$datos)
                <?php $total += $datos['costo'] * $datos['cantidad'] ?>
                <tr>
                    <td data-th="producto">
                        <div class="row">
                        <div class="col-sm-3 hidden-xs">
                            {{$datos['img']}}
                            <img src="{{asset('img/'.$datos['img'])}}" width="100" height="100" class="img-responsive" alt="">
                        </div>
                            <div class="col-sm-9">
                                <h4 class="nomargin">{{$datos['nombre']}}</h4>
                            </div>
                        </div>
                    </td>
                    <td data-th="Costo">${{$datos['costo']}}</td>
                    <td data-th="Cantidad">
                        <input type="number" value="{{ $datos['cantidad']}}" min="1" class="form-control quantity" />
                    </td>
                    <td data-th="Subtotal" class="text-center">{{ $datos['costo'] * $datos['cantidad']}}</td>
                    <td data-th="Otros" class="actions">
                        <button class="btn btn-info btn-sm update-cart" data-id="{{$id}}">
                            <i class="fa fa-refresh"></i>
                        </button>
                        <button class="btn btn-danger btn-sm remove-from-cart" data-id="{{$id}}">

                            <i class="fa fa-trash"></i>
                        </button>
                    </td>
                </tr>
                @endforeach
                @endif
            </tbody>
            <tfoot>
                <tr class="visible-xs">
                    <td class="text-center"><strong>Total {{$total}}</strong></td>
                </tr>
                <tr>
                    <td>
                        <a href="{{url ('/productos')}}" class="btn btn-warning">
                            Seguir comprando
                        </a>
                    </td>
                    <td colspan="2" class="hidden-sx"></td>
                    <td class="hidden-xs text-center"><strong>Total ${{ $total}}</strong></td>
                </tr>
            </tfoot>
        </table>
        <!-------------------------------->

    </div>
    <fotter class="bd-footer bg-light">
        <div class="container">
            <div class="row">
                <div>
                    <ul class="list-unstyled small text-muted">
                        <li class="mb-2">
                            Desarrollo para <a href="http://utvt.edomex.gob.mx/">UTVT</a>Noveno cuatrimestre &#169;
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        </footer>

        <script type="text/javascript">
            $(".update-cart").click(function(e){
                e.preventDefault();
                var ele = $(this);
                $.ajax({
                        url: '{{ url('actualizar') }}',
                        method: "patch",
                        data: {
                                _token: '{{ csrf_token() }}',
                                id: ele.attr("date-id"),
                                cantidad: ele.parents("tr").find(".quantity").val()
                            },
                        success: function (response){
                            window.location.reload();
                        }
                });
            });
          $(".remove-from-cart").click(function(e){
                  e.preventDefault();
                  var ele = $(this);
                  if(confirm("Estas seguro de borrar el producto ??")){
                      $.ajax({
                            url: '{{ url('borrar') }}',
                            method: "DELETE",
                            data: {
                                    _token: '{{ csrf_token() }}',
                                    id: ele.attr("date-id")
                            },
                            success: function(response){
                                window.location.reload();
                            }
                      });
                  }
          });

        </script>
</body>

</html>
