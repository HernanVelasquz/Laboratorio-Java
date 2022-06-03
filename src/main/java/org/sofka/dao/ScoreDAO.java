package org.sofka.dao;

import org.sofka.connection.ConecctionBaseData;
import org.sofka.model.Score;

import javax.swing.*;
import java.sql.*;
import java.util.ArrayList;

public class ScoreDAO {
    public ArrayList<Score> getPuntaje() {
        Connection con = null;
        ArrayList<Score> pointsSet = new ArrayList<>();
        try {
            con = ConecctionBaseData.getConnection();
            String sql = " select nombre, jugador_puntaje from puntajes order by jugador_puntaje desc ";
            Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
            while (result.next()) {
                Score newP = new Score(result.getString(1), result.getInt(2));
                pointsSet.add(newP);
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
        return pointsSet;
    }

    public void addPointComplete(Score score) {
        Connection con = null;
        try {
            con = ConecctionBaseData.getConnection();
            String sql = " insert puntajes(nombre, jugador_puntaje) values (?,?) ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, score.getNick_player());
            statement.setInt(2,  score.getScore_player());
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                JOptionPane.showMessageDialog(null, "Se ha Agregado una puntuación Nueva.");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
    }

    public void addPointIncomplete(Score score ) {
        Connection con = null;
        try {
            con = ConecctionBaseData.getConnection();
            String sql = " insert puntajes(jugador_puntaje) values (?) ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, score.getScore_player());
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                JOptionPane.showMessageDialog(null, "Se ha Agregado una puntuación Nueva.");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
    }
}
