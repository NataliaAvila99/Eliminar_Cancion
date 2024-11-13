<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalles de la Cancion</title>
</head>
<body>
<h1>Detalles de la Cancion</h1>

<ul>
<li>Titulo: ${cancion.titulo}</li>
<li>Artista: ${cancion.artista}</li>
<li>Album: ${cancion.album}</li>
<li>Genero: ${cancion.genero}</li>
<li>Idioma: ${cancion.idioma}</li>
<li>Fecha de Creación: ${cancion.fecha_de_creacion}</li>
  <li>Fecha de Actualización: ${cancion.fecha_de_actualizacion}</li>
</ul>

   <a href="/canciones/formulario/editar/${cancion.id}">Editar Canción</a>
    <a href="/canciones">Volver a lista de canciones</a>
<form action="/canciones/eliminar/${cancion.id}" method="POST">
						<input type="hidden" name="_method" value="DELETE"/>
						<button> Eliminar Cancion</button>
						</form>
</body>
</html>