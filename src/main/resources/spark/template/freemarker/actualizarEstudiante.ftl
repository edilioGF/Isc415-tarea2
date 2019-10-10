<!DOCTYPE html>
<html>
<head>
    <title>Actualizar datos de Estudiante</title>
</head>
<body>
<h1>Ingrese los datos del estudiante:</h1>

<form action="/actualizarEstudiante/" method="post"  enctype="application/x-www-form-urlencoded">
    <h2>Nombre:</h2>
    <input name="nombre" type="text" value="${estudiante.nombre}"/><br/>

    <h2>Apellido:</h2>
    <input name="apellido" type="text" value="${estudiante.apellido}"/><br/>

    <h2>Matricula:</h2>
    <input name="matricula" type="text" value="${estudiante.matricula}"/><br/>

    <h2>Telefono:</h2>
    <input name="telefono" type="text" value="${estudiante.telefono}"/><br/>

    <h2>Direccion:</h2>
    <input name="direccion" type="text" value="${estudiante.direccion}"/><br/>

    <input name="index" type="hidden" value="${index}"/>

    <button name="Enviar" type="submit">Actualizar</button>

</form>
</body>
</html>