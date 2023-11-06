<%-- 
    Document   : PanelAdministrador
    Created on : 7 oct 2023, 09:48:21
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel del Administrador</title>
    </head>
    <body>
        <div><h1>Sistema de Aerolinea </h1></div>
        <%-- Bienvenido --%>
        <c:set var="usuario" value="${param.tfUsuario}" />
        <div><h3><strong>¡Bienvenido, <c:out value="${usuario}" />!</strong></h3></div>
        
        <%--Directiva--%>
        <div><h3>Men&uacute; de opciones</h3></div>
        <div>
            <%@include file="menuAdministrador.jsp" %>
        </div>
        <div>            
            <%@include file="Footer.html" %>
        </div>
    </body>
</html>
