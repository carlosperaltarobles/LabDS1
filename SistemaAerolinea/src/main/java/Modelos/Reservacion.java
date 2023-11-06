package Modelos;

public class Reservacion {
    private int id;
    private int id_vuelo;
    private int id_pasajero;
    private String asiento;
    private String clase;
    private float precio;

    public Reservacion() {
    }

    public Reservacion(int id, int id_vuelo, int id_pasajero, String asiento, String clase, float precio) {
        this.id = id;
        this.id_vuelo = id_vuelo;
        this.id_pasajero = id_pasajero;
        this.asiento = asiento;
        this.clase = clase;
        this.precio = precio;

        //variables relacionales
    }

    public Reservacion(int id_vuelo, int id_pasajero, String asiento, String clase, float precio) {
        this.id_vuelo = id_vuelo;
        this.id_pasajero = id_pasajero;
        this.asiento = asiento;
        this.clase = clase;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public int getId_vuelo() {
        return id_vuelo;
    }

    public int getId_pasajero() {
        return id_pasajero;
    }

    public String getAsiento() {
        return asiento;
    }

    public String getClase() {
        return clase;
    }

    public float getPrecio() {
        return precio;
    }


}
