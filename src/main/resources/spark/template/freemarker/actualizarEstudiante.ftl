<!DOCTYPE html>
<html>
<head>
    <title>Actualizar datos de Estudiante</title>
    <link href="/css/bootstrap.css" rel="stylesheet">
    <script src="/js/bootstrap.js"></script>
</head>
<body>
<h1 style="text-align: center;">Ingrese los datos del estudiante:</h1>
</br>
<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-6">
            <div class="card" style="padding: 20px; background-color: lightgray">
                <form action="/actualizarEstudiante/" method="post"  enctype="application/x-www-form-urlencoded">
                    <div class="form-group">
                        <label for="nombre">Nombre:</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="${estudiante.nombre}">
                    </div>

                    <div class="form-group">
                        <label for="apellido">Apellido:</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value="${estudiante.apellido}">
                    </div>

                    <div class="form-group">
                        <label for="matricula">Matricula:</label>
                        <input type="text" class="form-control" id="matricula" name="matricula" value="${estudiante.matricula}">
                    </div>

                    <div class="form-group">
                        <label for="telefono">Telefono:</label>
                        <input type="text" class="form-control" id="telefono" name="telefono" value="${estudiante.telefono}">
                    </div>

                    <div class="form-group">
                        <label for="direccion">Direccion:</label>
                        <input type="text" class="form-control" id="direccion" name="direccion" value="${estudiante.direccion}">
                    </div>

                    <input name="index" type="hidden" value="${index}"/>

                    <button name="Enviar" type="submit" class="btn btn-primary">Actualizar</button>
                    <button onclick="location.href = '/';" type="button" class="btn btn-primary">Inicio</button>

                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>