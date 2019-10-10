<!DOCTYPE html>
<html>
<head>
    <title>Perfil del Estudiante</title>
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<h1>Perfil</h1>

<h2>${estudiante.nombre} ${estudiante.apellido}</h2>

<h4>Datos del estudiante:</h4>


<p>Matricula: ${estudiante.matricula}</p>
<p>Telefono: ${estudiante.telefono}</p>
<p>Direccion: ${estudiante.direccion}</p>

<a href="/actualizar/${index}/" class="button">Editar</a>
<a href="/" class="button">Inicio</a>

</body>
</html>