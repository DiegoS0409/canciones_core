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
    <p><strong>Año:</strong> ${cancion.anio}</p>
    <p><strong>Fecha de creación:</strong> ${cancion.fechaCreacion}</p>
    <p><strong>Fecha de actualización:</strong> ${cancion.fechaActualizacion}</p>

    <a href="/canciones/formulario/editar/${cancion.id}">
        <button>Editar Canción</button>
    </a>

    <a href="/canciones/eliminar/${cancion.id}" onclick="return confirm('¿Estás seguro de eliminar esta canción?');">
        <button>Eliminar Canción</button>
    </a>

    <br><br>

    <a href="/canciones">Volver a lista de canciones</a>
</body>
</html>
