package Servlets;

import java.io.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Modelos.Reservacion;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletPrincipal", value = "/ServletPrincipal")

public class ServletPrincipal extends HttpServlet {
    private final String usuario = "soporte";
    private final String contrasenia = "admin123";
    private final String servidor = "localhost:1433";
    private final String bd = "Aerolinea";

    String url = "jdbc:sqlserver://"
            + servidor
            + ";databaseName=" + bd
            + ";user=" + usuario
            + ";password=" + contrasenia
            + ";encrypt=false;trustServerCertificate=false;";
    private String message;

    public void init() {
        message = "Bienvenido a la página principal";
    }

    public void mostrarReservaciones(HttpServletRequest request, HttpServletResponse response){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Reservaciones";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<Reservacion> Reservaciones = new ArrayList<>();
                while (rs.next()) {
                    Reservacion reservacion = new Reservacion(
                            rs.getInt("id"),
                            rs.getInt("id_vuelo"),
                            rs.getInt("id_pasajero"),
                            rs.getString("asiento"),
                            rs.getString("clase"),
                            rs.getFloat("precio")
                    );
                    Reservaciones.add(reservacion);
                }
                request.setAttribute("reservaciones", Reservaciones);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String accion=request.getParameter("accion");
      if(accion==null){
          request.getRequestDispatcher("/Login.jsp").forward(request, response);
      } else if (accion.equals("Login")) {
          request.getRequestDispatcher("/Login.jsp").forward(request, response);
      } else if (accion.equals("Vuelos")) {
          request.getRequestDispatcher("/vuelos.jsp").forward(request, response);
      } else if (accion.equals("Aviones")) {
          request.getRequestDispatcher("/aviones.jsp").forward(request, response);
      } else if (accion.equals("Dashboard")) {
          request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
      } else if (accion.equals("Salir")) {
          request.getRequestDispatcher("/login.jsp").forward(request, response);
      }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String accion=request.getParameter("accion");

        if (accion.equals("Login")) {
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("contrasenia");
            if (usuario.equals("admin") && password.equals("admin")) {
                request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/Login.jsp").forward(request, response);
            }
        }
    }

    public void destroy() {
    }


}
