<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle del Artista</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background-color: #f9f9f9; }
        .contenedor { background: white; padding: 20px; border-radius: 10px; width: 400px; margin: auto; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        a { text-decoration: none; color: #007bff; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="contenedor">
    <h1>🎶 Detalle del Artista</h1>
    <p><strong>ID:</strong> ${artista.id}</p>
    <p><strong>Nombre:</strong> ${artista.nombre}</p>
    <p><strong>País:</strong> ${artista.pais}</p>
    <p><strong>Género Musical:</strong> ${artista.genero}</p>

    <a href="/artistas">⬅️ Volver a la lista</a>
</div>

</body>
</html>
