<%-- 
    Document   : VistaArtista
    Created on : 31-05-2017, 18:09:10
    Author     : javier
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ArtistaServlet" method="POST">
            <fieldset>
                <legend>Ingresar Artista</legend>
                <br>
                Nombre:
                <br>
                <input type="text" name="nombreArtista">
                <br>
                Estilo:
                <br>
                <select>
                    <option></option>
                </select>
                <br>
                <input type="submit">
            </fieldset>
        </form>
        
        <fieldset>
            <legend>Ingresar Artista</legend>
            <table border="1">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Estilo</th>
                        <th>Opciones</th>
                    </tr>
                    
                </thead>
                <tbody>
                <c:forEach var="contador" items='${ listaArtista }'>
                    <tr>
                        <td>${ contador.nombre }</td>
                        <td>${ contador.estilo }</td>
                        <td><a href="ArtistaServlet?nombre=${contador.nombre}">Canciones</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </fieldset>
    </body>
</html>
