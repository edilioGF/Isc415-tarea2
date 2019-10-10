<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/main.css" rel="stylesheet">
    <title>Listado de estudiantes</title>
</head>
<body>
<h1>Listado de Estudiantes</h1>
<div>
    <br/>
    <table>
        <tr>
            <th>Matricula</th>
            <th>Nombre</th>
            <th>Telefono</th>
            <th>Direccion</th>
            <th>Acciones</th>
        </tr>
        <#list estudiantes as estudiante>
            <tr>
                <td>${estudiante.matricula}</td>
                <td>${estudiante.nombre} ${estudiante.apellido}</td>
                <td>${estudiante.telefono}</td>
                <td>${estudiante.direccion}</td>
                <td>
                    <a href="/actualizar/${estudiante?index}/" class="button">Editar</a>
                    <a href="/eliminar/${estudiante?index}/" class="button">Eliminar</a>
                    <a href="/vista/${estudiante?index}/" class="button">Ver</a>
                </td>
            </tr>
        </#list>
    </table>
    <br/><br/>

    <form action="/registrar/" method="get">
        <button type="submit">Registrar Estudiante</button>
    </form>

</div>


</body>
</html>