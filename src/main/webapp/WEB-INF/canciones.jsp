<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Lista de Canciones</title>
</head>
<body>
    <h1>Lista de Canciones</h1>

    <table border="2">
        <tr>
            <th>Título</th>
            <th>Artista</th>
            <th>Detalle</th>
        </tr>

        <c:forEach var="cancion" items="${canciones}">
            <tr>
                <td>${cancion.titulo}</td>
                <td>${cancion.artista}</td>
                <td>
                    <a href="/canciones/detalle/${cancion.id}">Detalle</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <br>

    <a href="/canciones/formulario/agregar">
        <button>Agregar canción</button>
    </a>
</body>
</html>
