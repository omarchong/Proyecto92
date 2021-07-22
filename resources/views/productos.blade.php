<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
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
        <a href="{{ url('carrito')}}" class="nav-link">
            El carrito contiene:{{count (session('carrito'))}} Articulos
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
        <div class="row">
                    @foreach($productos as $producto)
                        <div class="col-sm-4">
                            <div class="card" style="width: 18rem;">
                                <img src="{{asset('img/'.$producto->img)}}" class="card-img-top" alt="...." height="300">
                                <div class="card-body">
                                    <h5 class="card-title"><b>N°.</b>{{$producto->id}} - {{$producto->nombre}}</h5>
                                    <p class="card-text">
                                        <b>Existencias:</b>{{$producto->cantidad}}<br>
                                        <b>Costo(c/u):</b>${{$producto->costo}}
                                    </p>
                                    <a href="{{url('agregar/'.$producto->id)}}" class="btn btn-primary" role="button"> Agregar</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
            </div>
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
</body>

</html>
