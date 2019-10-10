<!DOCTYPE html>
<html>
<head>
    <title>Registrar Estudiante</title>
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<h1>Ingrese los datos del estudiante:</h1>

<form action="/registrarEstudiante/" method="post"  enctype="application/x-www-form-urlencoded">
    <h2>Nombre:</h2>
    <input name="nombre" type="text"/><br/>

    <h2>Apellido:</h2>
    <input name="apellido" type="text"/><br/>

    <h2>Matricula:</h2>
    <input name="matricula" type="text"/><br/>

    <h2>Telefono:</h2>
    <input name="telefono" type="text"/><br/>

    <h2>Direccion:</h2>
    <input name="direccion" type="text"/><br/>

    <button type="submit">Registrar</button>
    <button onclick="location.href = '/';" type="button">Inicio</button>
</form>

</body>
</html>