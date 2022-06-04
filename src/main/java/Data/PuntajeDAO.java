package Data;

import Conexion.ConexionBD;
import Entidades.Puntaje;

import javax.swing.*;
import java.sql.*;
import java.util.ArrayList;

public class PuntajeDAO {
    public ArrayList<Puntaje> getPuntaje() {
        Connection con = null;
        ArrayList<Puntaje> pointsSet = new ArrayList<>();
        try {
            con = ConexionBD.getConnection();
            String sql = " select nombre, jugador_puntaje from puntajes order by jugador_puntaje desc ";
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            while (result.next()) {
                Puntaje newP = new Puntaje(result.getString(1), result.getInt(2));
                pointsSet.add(newP);
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
        return pointsSet;
    }

    public void addPointComplete(Puntaje p) {
        Connection con = null;
        try {
            con = ConexionBD.getConnection();
            String sql = " insert puntajes(nombre, jugador_puntaje) values (?,?) ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, p.getNombre_jugador());
            statement.setInt(2, p.getJugador_puntaje());
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                JOptionPane.showMessageDialog(null, "Se ha Agregado una puntuación Nueva.");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
    }

    public void addPointIncomplete(Puntaje p) {
        Connection con = null;
        try {
            con = ConexionBD.getConnection();
            String sql = " insert puntajes(jugador_puntaje) values (?) ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, p.getJugador_puntaje());
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                JOptionPane.showMessageDialog(null, "Se ha Agregado una puntuación Nueva.");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
    }
}
