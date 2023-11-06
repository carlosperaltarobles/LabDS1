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
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- sidebar -->
            <%@include file="sidebar.jsp"%>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">


                <h2>Vuelos</h2>
                <div class="table-responsive small">
                    <table class="table table-striped table-sm">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Duracion</th>
                            <th scope="col">Avion</th>
                            <th scope="col">Salida</th>
                            <th scope="col">Llegada</th>
                            <th scope="col">Aerolinea</th>
                            <th scope="col">Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1,001</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>
                                <a href="vuelo.jsp" class="btn btn-primary"><i class="bi bi-pencil-fill"></i></a>
                                <a href="vuelo.jsp" class="btn btn-danger"><i class="bi bi-trash-fill"></i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/chart.umd.js" integrity="sha384-eI7PSr3L1XLISH8JdDII5YN/njoSsxfbrkCTnJrzXt+ENP5MOVBxD+l6sEG4zoLp">

    </script><script src="assets/js/dashboard.js"></script>
    </body>
</html>
