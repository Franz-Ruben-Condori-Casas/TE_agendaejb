<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTADO DE CONTACTOS</h1>
        <a href="ContactoControlador?action=add">Nuevo</a>
        <table border="1">
            <tr>
            <td>Id</td>
            <td>Nombre</td>
            <td>Telefono</td>
            <td>Correo</td>
            <td></td>
            <td></td>
            </tr>
            <c:forEach var="item" items="${lista}">
               <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.telefono}</td>
                    <td>${item.correo}</td>
                    <td><a href="ContactoControlador?action=edit&id=${item.id}">
                        Editar
                        </a>
                    </td>
                    <td>
                        <a href="ContactoControlador?action=delete&id=${item.id}"
                           onclick="return(confirm('Esta Seguro ?'))">
                        Eliminar
                        </a>
                    </td>
               </tr>
               </c:forEach>
        </table>
    </body>
</html>
