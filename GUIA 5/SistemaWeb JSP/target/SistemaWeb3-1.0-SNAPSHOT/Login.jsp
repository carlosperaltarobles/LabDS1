<%-- 
    Document   : Login
    Created on : 7 oct 2023, 09:40:35
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
    </head>
    <body>
        <form method="POST" action="/SistemaWeb/ServletPrincipal?accion=Login" id="formLogin">
            <div id="resultLogin"></div>
            <div><h1>Bienvenido a su Aerolinea</h1></div>
            <%--crear objeto de la clase y formatear--%>
            <c:set var="fechaActual" value="<%= new java.util.Date() %>" />
            <c:set var="formatoFecha" value="dd/MM/YYYY"  />
            <%--Imprimir Fecha--%>
            <div>
                <label>
                    <strong>
                        <c:out value="Fecha Actual: "/>
                        <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}'/>
                    </strong>
                </label>
            </div>
            
            <div><label>Usuario:</label></div>
            <div><input type="text" name="tfUsuario" id="idtfUsuario"></div>
            <div><label>Contraseña:</label></div>
            <div><input type="password" name="tfContrasenia" id="idtfContrasenia"></div>
            <div><input type="submit" value="Iniciar Sesion"></div>
        </form>
    </body>
</html>