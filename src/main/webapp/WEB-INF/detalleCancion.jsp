<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle de Canción</title>
</head>
<body>
    <h1>Detalle de Canción</h1>
    <p><strong>ID:</strong> ${cancion.id}</p>
    <p><strong>Título:</strong> ${cancion.titulo}</p>
    <p><strong>Artista:</strong> ${cancion.artista}</p>
    <p><strong>Álbum:</strong> ${cancion.album}</p>
    <p><strong>Género:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>
    <p><strong>Fecha de creación:</strong> ${cancion.fechaCreacion}</p>
    <p><strong>Fecha de actualización:</strong> ${cancion.fechaActualizacion}</p>

    <a href="/canciones">Volver a lista de canciones</a>
</body>
</html>
