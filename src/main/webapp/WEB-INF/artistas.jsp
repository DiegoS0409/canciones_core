<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Lista de Artistas</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background: #f6f6f6; }
        table { width: 100%; border-collapse: collapse; background: white; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #333; color: white; }
        a { text-decoration: none; color: #007bff; }
        a:hover { text-decoration: underline; }
        .boton-agregar {
            display: inline-block; padding: 8px 12px; background: #28a745; color: white;
            text-decoration: none; border-radius: 5px; margin-bottom: 10px;
        }
    </style>
</head>
<body>
<h1>🎤 Lista de Artistas</h1>

<a href="/artistas/formulario/agregar" class="boton-agregar">➕ Agregar Artista</a>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>País</th>
            <th>Género Musical</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="artista" items="${artistas}">
            <tr>
                <td>${artista.id}</td>
                <td>${artista.nombre}</td>
                <td>${artista.pais}</td>
                <td>${artista.genero}</td>
                <td>
                    <a href="/artistas/detalle/${artista.id}">👁 Ver</a> |
                    <a href="/artistas/formulario/editar/${artista.id}">✏️ Editar</a> |
                    <a href="/artistas/eliminar/${artista.id}" onclick="return confirm('¿Eliminar este artista?')">🗑 Eliminar</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
