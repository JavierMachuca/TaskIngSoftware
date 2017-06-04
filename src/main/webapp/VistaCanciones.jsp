<%-- 
    Document   : newjsp
    Created on : 31-05-2017, 17:39:54
    Author     : javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset>
            <legend>Registrar cancion</legend>
            <form action="CancionServlet" method="POST">
                <table border="0" cellpadding="10">
                    <tbody>
                        <tr>
                            <td>Artista:</td>
                            <td><input type="text" name="nombreArtista" disabled="true"></td>
                        </tr>
                        <tr>
                            <td>Cancion:</td>
                            <td><input type="text" name="nombreCancion"></td>
                        </tr>
                        <tr>
                            <td>Duracion:</td>
                            <td><input type="time" name="duracionCancion"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td rowspan="2"><input type="submit" value="Guardar"></td>
                        </tr>
                    </tbody>
                </table>   
            </form>
                     
        </fieldset>
        
        <fieldset>
            <legend>Ingresar Artista</legend>
            <table border="1" cellpadding="10">
                <thead>
                    <tr>
                        <th>Cancion</th>
                        <th>Duracion</th>
                        <th>Opciones</th>
                    </tr>      
                </thead>
                <tbody>
                <c:forEach>
                    <tr>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </fieldset>
    </body>
</html>
