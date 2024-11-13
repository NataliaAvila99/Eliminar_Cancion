<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canciones</title>
</head>
<body>
		<h1>Estas son las canciones</h1>
		<ul>
		<c:forEach var="cancion" items="${canciones}">
		<li>Titulo: ${cancion.titulo}</li>
		<li>Artista: ${cancion.artista}</li>
		<li>Album: ${cancion.album}</li>
		<li>Género: ${cancion.genero}</li>
		<li>idioma: ${cancion.idioma}</li>
		
		<a href="/canciones/detalle/${cancion.id}"> Detalle </a>
		</c:forEach>
		</ul>
	<a href="/canciones/formulario/agregar/0">Agregar Canción</a>
		
</body>
</html>