<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Editar Artista</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background: #f1f1f1; }
        .formulario { width: 400px; margin: auto; background: white; padding: 20px; border-radius: 10px; }
        label { display: block; margin-top: 10px; }
        input { width: 100%; padding: 8px; margin-top: 5px; }
        .error { color: red; font-size: 13px; }
        button { margin-top: 15px; padding: 8px 12px; background: #007bff; color: white; border: none; border-radius: 5px; }
    </style>
</head>
<body>

<div class="formulario">
    <h1>✏️ Editar Artista</h1>

    <form:form method="POST" modelAttribute="artista" action="/artistas/procesa/editar/${artista.id}">
        <label>Nombre:</label>
        <form:input path="nombre"/>
        <form:errors path="nombre" cssClass="error"/>

        <label>País:</label>
        <form:input path="pais"/>
        <form:errors path="pais" cssClass="error"/>

        <label>Género Musical:</label>
        <form:input path="genero"/>
        <form:errors path="genero" cssClass="error"/>

        <button type="submit">Actualizar</button>
    </form:form>

    <a href="/artistas">⬅️ Volver</a>
</div>

</body>
</html>
