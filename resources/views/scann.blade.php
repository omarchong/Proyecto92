<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generador de Qr</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
</head>
<body>
    <h1 class="text-center">Jquery HTML5 Qr-Code: Lector QR</h1>
    <video id="preview"></video>
    <script type="text/javascript">
        let scanner = new Instascan.Scanner({ video: document.getElementByid('preview')});
        scanner.addListener('scan', function (content){
            console.log(content);
            alert(content);
        });
        Instascan.Camera.getCamera().then(function(cameras){
            if(cameras.length > 0){ scanner.start(cameras[0]);}
            else{ console.error('Error: Camara no funciona!!!!');}
        }).catch(function (e){
            console.error(e);
        });
    </script>
</body>
</html>
