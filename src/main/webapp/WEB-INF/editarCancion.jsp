<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Canción</title>
</head>
<body>
    <h1>Editar Canción</h1>

    <form:form action="/canciones/procesa/editar/${cancion.id}" method="post" modelAttribute="cancion">

        <div>
            <form:label path="titulo">Título:</form:label>
            <form:input path="titulo"/>
            <form:errors path="titulo" cssClass="error"/>
        </div>

        <div>
            <form:label path="artista">Artista:</form:label>
            <form:input path="artista"/>
            <form:errors path="artista" cssClass="error"/>
        </div>

        <div>
            <form:label path="album">Álbum:</form:label>
            <form:input path="album"/>
            <form:errors path="album" cssClass="error"/>
        </div>

        <div>
            <form:label path="genero">Género:</form:label>
            <form:input path="genero"/>
            <form:errors path="genero" cssClass="error"/>
        </div>

        <div>
            <form:label path="idioma">Idioma:</form:label>
            <form:input path="idioma"/>
            <form:errors path="idioma" cssClass="error"/>
        </div>

        <div>
            <form:label path="anio">Año:</form:label>
            <form:input path="anio" type="number"/>
            <form:errors path="anio" cssClass="error"/>
        </div>

        <br>
        <input type="submit" value="Actualizar Canción">

    </form:form>

    <br>
    <a href="/canciones">Volver a lista</a>
</body>
</html>