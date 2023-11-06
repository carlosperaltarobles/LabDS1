
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en" data-bs-theme="auto">
<head>
    <script src="assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title>Sistema Aerolinea</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/dashboard/">



    <link rel="stylesheet" href="assets/css/docsearchcss@3.css">

    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <%@include file="navbar.jsp"%>
</head>
<div class="container-fluid">
    <div class="row">
        <!-- sidebar -->
      <%@include file="sidebar.jsp"%>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Dashboard</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <div class="btn-group me-2">
                        <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                        <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                    </div>
                    <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle d-flex align-items-center gap-1">
                        <svg class="bi"><use xlink:href="#calendar3"/></svg>
                        This week
                    </button>
                </div>
            </div>

            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
            <h1>Conexion: ${mensaje_conexion}</h1>
            <h2>Reservaciones</h2>
            <div class="table-responsive small">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Vuelo</th>
                        <th scope="col">Pasajero</th>
                        <th scope="col">Asiento</th>
                        <th scope="col">Clase</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Acciones</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${reservaciones}" var="reservacion">
                            <tr>
                                <td>${reservacion.id}</td>
                                <td>${reservacion.vuelo}</td>
                                <td>${reservacion.pasajero}</td>
                                <td>${reservacion.asiento}</td>
                                <td>${reservacion.clase}</td>
                                <td>${reservacion.precio}</td>
                                <td>
                                    <a href="reservaciones/editar?id=${reservacion.id}" class="btn btn-sm btn-outline-secondary">Editar</a>
                                    <a href="reservaciones/eliminar?id=${reservacion.id}" class="btn btn-sm btn-outline-secondary">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
</div>
<script src="assets/dist/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/chart.umd.js" integrity="sha384-eI7PSr3L1XLISH8JdDII5YN/njoSsxfbrkCTnJrzXt+ENP5MOVBxD+l6sEG4zoLp">

</script><script src="assets/js/dashboard.js"></script></body>
</html>
