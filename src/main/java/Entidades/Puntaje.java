package Entidades;

public class Puntaje {
    private String nombre_jugador;
    private int jugador_puntaje;

    public Puntaje(String nombre_jugador, int jugador_puntaje) {
        this.nombre_jugador = nombre_jugador;
        this.jugador_puntaje = jugador_puntaje;
    }
    public Puntaje(int jugador_puntaje) {
        this.jugador_puntaje = jugador_puntaje;
    }

    public String getNombre_jugador() {
        return nombre_jugador;
    }

    public void setNombre_jugador(String nombre_jugador) {
        this.nombre_jugador = nombre_jugador;
    }

    public int getJugador_puntaje() {
        return jugador_puntaje;
    }

    public void setJugador_puntaje(int jugador_puntaje) {
        this.jugador_puntaje = jugador_puntaje;
    }
}
