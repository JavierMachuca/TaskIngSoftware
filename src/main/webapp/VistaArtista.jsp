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
        <c:choose>
            <c:when test="${metodo == 'edit'}">
                <form action="ArtistaServlet" method="POST">
                    <fieldset>
                        <legend>Actualizar Artista</legend>
                        <table border="0" cellpadding="10">
                            <tbody>
                                <tr>
                                    <td>Nombre:
                                        <input type="hidden" name="idArtista" value="${artista.id}">
                                    </td>
                                    <td><input type="text" name="nombreArtista" value="${ artista.nombre }"></td>
                                </tr>
                                <tr>
                                    <td>Estilo:</td>
                                    <td>
                                        <select name="estilo">
                                                <option>ROCK</option>
                                                <option>FOLK</option>
                                                <option>POP</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Actualizar" name="btnAction"></td>
                                </tr>
                            </tbody>
                        </table>
                    </fieldset>
                </form>
            </c:when>
            <c:otherwise>
                <form action="ArtistaServlet" method="POST">
                    <fieldset>
                        <legend>Ingresar Artista</legend>
                        <table border="0" cellpadding="10">
                            <tbody>
                                <tr>
                                    <td>Nombre:</td>
                                    <td><input type="text" name="nombreArtista"></td>
                                </tr>
                                <tr>
                                    <td>Estilo:</td>
                                    <td>
                                        <select name="estilo">
                                                <option>ROCK</option>
                                                <option>FOLK</option>
                                                <option>POP</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2"><input type="submit" value="Guardar" name="btnAction"></td>
                                </tr>
                            </tbody>
                        </table>                 
                    </fieldset>
                </form>
            </c:otherwise>
        </c:choose>
            
        <fieldset>
            <legend>Lista Artistas</legend>
            <table border="1" cellpadding="10">
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
                        <td>
                            <a href="ArtistaServlet?id=${ contador.id }&metodo=edit">Editar</a>-
                            <a href="ArtistaServlet?id=${ contador.id }&metodo=show ">Canciones</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </fieldset>
    </body>
</html>
