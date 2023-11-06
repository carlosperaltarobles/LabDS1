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

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Sistema Aerolinea</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background-color: chartreuse;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        h2 {
            color: black;
        }
        form {
            max-width: 400px;
            margin: 20px auto;
            background-color: red;
            padding: 45px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        select {
            width: 100%;
            padding: 10px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>

    <body>
        <form method="POST" action="/SistemaWeb_1/ServletPrincipal?accion=Login" id="formLogin">
            <div id="resultLogin"></div>    
            <div><h1>Sistema de Aerolinea</h1></div>     
            
            <%-- Crear objeto de la clase Date y formatear la fecha --%>
            <c:set var="fechaActual" value="<%= new java.util.Date() %>" />
            <c:set var="formatoFecha" value="dd/MM/YYYY" /> 
            
            <%-- Imprimir fecha --%>            
            <div><label><strong>
                <c:out value="Fecha actual: "/>
                <fmt:formatDate value='${fechaActual}' pattern='${formatoFecha}' />
            </strong></label></div><br>
            <div><label>Usuario:</label></div>            
            <div><input type="text" name="tfUsuario" id="idtfUsuario"></div><br>
            <div><label>Contrase&ntilde;a:</label></div>
            <div><input type="password" name="tfContrasenia" id="idtfContrasenia" ></div><br>
            <div><input type="submit" value="Iniciar Sesi&oacute;n"></div>
        </form>    
    </body>
</html>
