<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Empleados</title>
    </head>
    <body>
        <h1>Gestión de Aviones</h1>
        <h2>Listado de Aviones</h2>

        <h1>Conexion: ${mensaje_conexion}</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>ID_Aviones</th>
                    <th>modelo</th>
                    <th>capacidad</th>
                    <th>tipo</th>
                   
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaAviones}" var="item">
                    <tr>
                        <td><c:out value="${item.ID_Aviones}" /></td>
                        <td><c:out value="${item.modelo}" /></td>
                        <td><c:out value="${item.capacidad}" /></td>                        
                        <td><c:out value="${item.tipo}" /></td>
                    </tr>
                </c:forEach>
            </tbody>      
        </table>
    </body>
</html>